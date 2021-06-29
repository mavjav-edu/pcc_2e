#Requires -PSEdition Core
$TESTING = $true
$MDs = Get-ChildItem -Filter *.md -Recurse # Get all markdown files
$PYFilesPattern = [regex]::new('(?<=[^\/\*\[\w\(])\*?([^\s\[\]]+\.py)\*?(?=[^\*\]\w\)])?') # Filters legitimate python script mentions
foreach($MD in $MDs) {
    $MDcontent = Get-Content $MD
    $mentionsPYfile = $MDcontent | Select-String -Pattern $PYFilesPattern -AllMatches
    foreach ($mention in $mentionsPYfile) {
        $pathToPyPossible = Resolve-Path '.';
        if($MD.Name -like 'chapter_*.md') {
            $backChPath = Resolve-Path ".\$($MD.Name -replace '_(\d{1})\.md$','_0$1' -replace '\.md$','' )"
            $pathToPyPossible = Join-Path $backChPath $mention.Matches.Groups[1].Value
        } else {
            $pathToPyPossible = Join-Path $MD.Directory $mention.Matches.Groups[1].Value
        }
        if(Test-Path $pathToPyPossible -ErrorAction SilentlyContinue) {
            Push-Location $MD.Directory
            $relPathToPy = (Resolve-Path $pathToPyPossible -Relative) -replace '^\.\\','' -replace '\\','/' # HTTP compatible path
            $changedLine = ($mention) -replace $mention.Pattern,"[`$0]($relPathToPy)"
            if($changedLine -ne  $MDcontent[($mention.LineNumber)-1]){
                $MDcontent[($mention.LineNumber)-1] = $changedLine
            }
            $MDcontent[($mention.LineNumber)-1] = ($mention) -replace $mention.Pattern,"[`$0]($relPathToPy)"
            if(-not $TESTING) {
                Set-Content -Path $MD -Value $MDcontent
            } else {
                Write-Host "'$MD' would get:`t$($MDcontent[($mention.LineNumber)-1])"
            }
            Pop-Location
        }
    }
}
$PYFiles = Get-ChildItem -Filter  *.py -Recurse
foreach ($PYFile in $PYFiles) {
    
}