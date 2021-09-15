#Requires -PSEdition Core
$TESTING = $false

$book = [System.IO.File]::ReadAllBytes("C:\Users\MAVADD~1\CALIBR~1\CALIBR~1\ERICMA~2\PY98C8~1\Python Crash Course_ A Hands-On - Eric Matthes.epub")
[System.Reflection.Assembly]::LoadWithPartialName('System.IO.Compression')
$zipStream = New-Object System.IO.Memorystream
$zipStream.Write($book, 0, $book.Count) | Out-Null
$zipFile = [System.IO.Compression.ZipArchive]::new($zipStream)
$htmlFiles = $zipFile.Entries | Where-Object -Property FullName -Match "ch\d+\.html"
foreach ($htmlFile in $htmlFiles) {
    $chapter = $zipFile.GetEntry($htmlFile)
    $chapter.Open().Read(($chContentBytes = [byte[]]::new($chapter.Length)), 0, $($chapter.Length)) | Out-Null
    $chContentStr = [System.Text.Encoding]::Default.GetString($chContentBytes)
    $HTML = New-Object -Com "HTMLFile"
    $HTML.write([ref]$chContentStr) | Out-Null
    $chNum = (Select-String -InputObject $htmlFile.Name -Pattern "(\d+)").Matches.Value
    $README_md = Resolve-Path ("chapter_$chNum\README.md") -ErrorAction Inquire
    # $chTitle has XPath //*[@id="ch$chNum"]/strong[2]
    $chTitle = (Get-Culture).TextInfo.ToTitleCase($HTML.getElementById("ch$chNum").getElementsByTagName('strong')[1].innerHTML.ToLowerInvariant())
    # #sbo-rt-content > p:nth-child(3)
    $TryItYourselfs = $HTML.getElementsByClassName('sidebar')
    $chSummary = $HTML.getElementById('sbo-rt-content').childNodes[2].innerHTML
    $i = 0
    $outStr = Out-String -InputObject ("<H1>" + $chTitle + "</H1>`n`n$chSummary" | pandoc @("--from=HTML", "--to=markdown_mmd+backtick_code_blocks+fenced_code_blocks+autolink_bare_uris"))
    $outStr = @"


$outStr

"@

    if ($TESTING) {
        $tempFile = New-TemporaryFile
        Out-File -InputObject $outStr -FilePath  $tempFile -Encoding utf8
        if (Test-Path -Path $README_md) { Get-Content $README_md | Out-File -FilePath $tempFile -Append }
        Move-Item -Path $tempFile -Destination $README_md -Force
    }
    else {
        Out-File -InputObject $outStr -FilePath  $README_md -Append -Encoding utf8
    }
    foreach ($TryItYourself in $TryItYourselfs) {
        $i++
        $outStr = Out-String -InputObject (("<BR/>" + (Out-String -InputObject $TryItYourself.innerHTML) -creplace '<STRONG>TRY IT YOURSELF</STRONG>', "<H2>TRY IT YOURSELF &#35;$i</H2>" -replace '<([^>\s]+)\s*class="?programs"?>([\s\S]+?)<\/\1>', '<pre class="python"><code>$2</code></pre>' -replace '<span\s*class="?literal"?>([\s\S]+?)</span>', '<code>$1</code>' | pandoc @("--from=HTML", "--to=markdown_mmd+backtick_code_blocks+fenced_code_blocks+autolink_bare_uris")) -replace 'ch(\d+)\.html', '../chapter_$1/README.md') -replace '(id="ch(\d+)e[\w\W]+?)\([^\)]+chapter_(?:0\2|\2)[^\)]+README\.md(#[^\)]+)\)','$1($3)'
 
        if ($TESTING) {
            Out-Host -InputObject $outStr
            pause
        }
        else {
            Out-File -InputObject $outStr -FilePath  $README_md -Append -Encoding utf8
        }
    }
}