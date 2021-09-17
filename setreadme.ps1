#Requires -PSEdition Core
$TESTING = $false

# Read all the bytes from the epub file
$book = [System.IO.File]::ReadAllBytes("C:\Users\MAVADD~1\CALIBR~1\CALIBR~1\ERICMA~2\PY98C8~1\Python Crash Course_ A Hands-On - Eric Matthes.epub")

# Load the system.io.compression assembly
[System.Reflection.Assembly]::LoadWithPartialName('System.IO.Compression')

# Create a new instance of the ZipArchive class
$zipStream = New-Object System.IO.Memorystream
$zipStream.Write($book, 0, $book.Count) | Out-Null
$zipFile = [System.IO.Compression.ZipArchive]::new($zipStream)

# Get the relevant HTML entries of the epub file
$htmlFiles = $zipFile.Entries | Where-Object -Property FullName -Match "ch\d+\.html"

# Check if AngleSharp Package is installed; if not, install it
if (!(Get-Package -Name "AngleSharp" -ErrorAction SilentlyContinue)) {
    Install-AngleSharp
}

# Load AngleSharp assembly
$AngleSharpAssemblyFullPath = (Get-ChildItem -Filter *.dll -Recurse (Split-Path (Get-Package AngleSharp -ErrorAction Stop).Source)).FullName | Where-Object {$_ -like "*standard*"}
Add-Type -Path $AngleSharpAssemblyFullPath -ErrorAction Stop

# Create HTMLparser using AngleSharp
$HTMLparser = New-Object AngleSharp.Html.Parser.HtmlParser

# Loop through all the relevant HTML files to Get the TryItYourself blocks and chapter summaries
foreach ($htmlFile in $htmlFiles) {
    $chapter = $zipFile.GetEntry($htmlFile)
    $stream = $chapter.Open()
    $reader = [System.IO.StreamReader]::new($stream)
    $chContentStr = $reader.ReadToEnd()

    # HTMLFile COM object no longer works in Windows 11, since MS jetisoned IE11 HTML parser; see Git history for old method

    # New way:
    $HTML = $HTMLparser.ParseDocument($chContentStr)

    $chNum = (Select-String -InputObject $htmlFile.Name -Pattern "(\d+)").Matches.Value
    $README_path = ".\chapter_$chNum\README.md"
    $README_md = $null

    # check if README_md exists
    if (-not(Test-Path $README_path)) {
        # create empty README_md at README_path
        $README_md = New-Item -Path $README_path -Force -ItemType File -Value $null
    }    else {
        # set README_md to existing README_md
        $README_md = Resolve-Path $README_path
    }
    # $chTitle has XPath //*[@id="ch$chNum"]/strong[2]
    $chTitle = (Get-Culture).TextInfo.ToTitleCase($HTML.GetElementById("ch$chNum").GetElementsByTagName('strong')[1].InnerHtml.ToLowerInvariant())
    # #sbo-rt-content > p:nth-child(3)
    $TryItYourselfs = $HTML.GetElementsByClassName('sidebar')
    $chSummary = $HTML.GetElementById('sbo-rt-content').childNodes[2].innerHTML
    $outStr = Out-String -InputObject ("<H1>" + $chTitle + "</H1>`n`n$chSummary" | pandoc @("--from=HTML", "--to=markdown_mmd+backtick_code_blocks+fenced_code_blocks+autolink_bare_uris"))

    if ($TESTING) {
        $tempFile = New-TemporaryFile
        Out-File -InputObject $outStr -FilePath  $tempFile -Encoding utf8
        if (Test-Path -Path $README_md) { Get-Content $README_md | Out-File -FilePath $tempFile -Append }
        Move-Item -Path $tempFile -Destination $README_md -Force
    }
    else {
        Out-File -InputObject $outStr -FilePath  $README_md -Append -Encoding utf8
    }
    $i=0
    foreach ($TryItYourself in $TryItYourselfs) {
        $outStr = Out-String -InputObject (("<BR/>" + (Out-String -InputObject $TryItYourself.InnerHtml) -replace '<STRONG>TRY IT YOURSELF</STRONG>', "<H2>TRY IT YOURSELF &#$(9398+$i);</H2>" -replace '<([^>\s]+)\s*class="?programs"?>([\s\S]+?)<\/\1>', '<pre class="python"><code>$2</code></pre>' -replace '<span\s*class="?literal"?>([\s\S]+?)</span>', '<code>$1</code>' | pandoc @("--ascii", "--from=HTML", "--to=markdown_mmd+backtick_code_blocks+fenced_code_blocks+autolink_bare_uris")) -replace 'ch(\d+)\.html', '../chapter_$1/README.md' -replace '(id="ch(\d+)e[\w\W]+?)\([^\)]+chapter_(?:0\2|\2)[^\)]+README\.md(#[^\)]+)\)','$1($3)')
        $i++
        if ($TESTING) {
            Out-Host -InputObject $outStr
            pause
        }
        else {
            Out-File -InputObject $outStr -FilePath  $README_md -Append -Encoding utf8
        }
    }
}

# Function to install AngleSharp package from v2 nuget api if it isn't already install
function Install-AngleSharp {
    # v2 API of NuGet API is necessary for installing NuGet packages into PowerShell Core https://stackoverflow.com/a/53614802/1757756

    # Install prerequisites for AngleSharp: CodePages, Buffers
    #   Check if Buffers is installed; if not, install it
    if (-not(Get-Package -Name Buffers -ErrorAction SilentlyContinue)) {
        Install-Package System.Buffers -Source "https://www.nuget.org/api/v2" -Force
    }
    #   Check if CodePages is installed; if not, install it
    if (-not(Get-Package -Name CodePages -ErrorAction SilentlyContinue)) {
        
        # Avoid `Dependency loop` issue by SkipDependencies SwitchParameter
        Install-Package System.Text.Encoding.CodePages -Source "https://www.nuget.org/api/v2" -Force -Verbose -SkipDependencies
    }
    Install-Package AngleSharp -Source "https://www.nuget.org/api/v2" -Force -ErrorAction Stop
}
    
