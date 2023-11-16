$7zipPath = "$env:ProgramFiles\7-Zip\7z.exe"

if (-not (Test-Path -Path $7zipPath -PathType Leaf)) {
    throw "7 zip file '$7zipPath' not found"
}

Set-Alias Start-SevenZip $7zipPath

$Source = ".\R98s_Goulash\*"
$Target = ".\goulash.zip"

Start-SevenZip a -mx=9 $Target $Source

Rename-Item -Path ".\goulash.zip" -NewName ".\goulash.modcomponent"
Move-Item -Path ".\goulash.modcomponent" -Destination "C:\Program Files (x86)\Steam\steamapps\common\TheLongDark\Mods\goulash.modcomponent" -Force