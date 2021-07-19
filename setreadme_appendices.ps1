#Requires -PSEdition Core
$TESTING = $true

$book = [System.IO.File]::ReadAllBytes("C:\Users\MAVADD~1\CALIBR~1\CALIBR~1\ERICMA~2\PY98C8~1\Python Crash Course_ A Hands-On - Eric Matthes.epub")
[System.Reflection.Assembly]::LoadWithPartialName('System.IO.Compression')
$zipStream = New-Object System.IO.Memorystream
$zipStream.Write($book, 0, $book.Count) | Out-Null
$zipFile = [System.IO.Compression.ZipArchive]::new($zipStream)
$htmlFiles = $zipFile.Entries | Where-Object -Property FullName -Match "app\d+\.html"
foreach ($htmlFile in $htmlFiles) {
    $appendix = $zipFile.GetEntry($htmlFile)
    $appendix.Open().Read(($appContentBytes = [byte[]]::new($appendix.Length)), 0, $($appendix.Length)) | Out-Null
    $appContentStr = [System.Text.Encoding]::Default.GetString($appContentBytes)
    $HTML = New-Object -Com "HTMLFile"
    $HTML.write([ref]$appContentStr) | Out-Null
    $numToLetter = @{0='';1="a";2="b";3="c";4="d"}
    $appNum = (Select-String -InputObject $htmlFile.Name -Pattern "(\d+)").Matches.Value
    $appLetter = $numToLetter[[Int32]::Parse($appNum)]
    $README_md = "appendix_$appLetter\README.md"
    # $appTitle has XPath //*[@id="app$appNum"]/strong[2]
    if(-not (Test-Path -Path $README_md -ErrorAction Continue) -and ($HTML.getElementById("app$appNum").getElementsByTagName('strong').Count -lt 1)){
        continue
    }
    $appTitleElem = $HTML.getElementById("app$appNum")
    $appTitle = (Get-Culture).TextInfo.ToTitleCase($appTitleElem.getElementsByTagName('strong')[1].innerHTML.ToLowerInvariant())
    $HTML.getElementById("app$appNum").removeNode($true) | Out-Null
    $outStrJob = Start-ThreadJob -ScriptBlock { 
            param (
            [Parameter()]
            [string]
            $title,
            [Parameter()]
            [String[]]
            $content
            )   
        Out-String -InputObject ("<H1>$title</H1>`n$content") | pandoc @("--from=HTML", "--to=markdown_mmd+backtick_code_blocks+fenced_code_blocks+autolink_bare_uris-raw_html-native_divs-native_spans-fenced_divs-bracketed_spans+pipe_tables-grid_tables-inline_code_attributes-link_attributes",'--extract-media=".\images\"') } -Name "pandoc appendix $appNum to markdown" -ArgumentList $appTitle, $($HTML.ie9_body.innerHTML)

    if ($TESTING) {
        $tempFile = New-TemporaryFile
        $outStr = Receive-Job -Job $outStrJob -Wait -AutoRemoveJob -ErrorAction Ignore
        Out-File -InputObject $outStr -FilePath  $tempFile -Encoding utf8
        #Get-Content $README_md | Out-File -FilePath $tempFile -Append
        $appendixDir = Join-Path $README_md ".."
        if( $null -ne $README_md -and -not (Test-Path $appendixDir)) {
            New-Item $appendixDir -ItemType Directory
        }
        Move-Item -Path $tempFile -Destination $README_md -Force -ErrorAction Stop
    }
    else {
        Out-File -InputObject $outStr -FilePath  $README_md -Append -Encoding utf8
    }
}