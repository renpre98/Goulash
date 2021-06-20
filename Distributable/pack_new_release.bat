del /q .\goulash.modcomponent
del /q ".\Auto-Mapped"
copy "C:\Program Files (x86)\Steam\steamapps\common\TheLongDark\Mods\auto-mapped\Goulash_Automapped" ".\Auto-Mapped\Goulash_Automapped"
copy "..\Unity\AssetBundles\goulash.unity3d" ".\Auto-Mapped\Goulash_Automapped\goulash.unity3d"
7z a -tzip goulash.modcomponent ".\Auto-Mapped" ".\blueprints"