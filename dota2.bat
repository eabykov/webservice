@ECHO OFF
SETLOCAL
SET "sourcedir=C:\Program Files (x86)\Steam\steamapps\common\dota 2 beta\game\dota\panorama\videos\"
FOR /d %%a IN ("%sourcedir%\*") DO RD /S /Q "%%a"
FOR %%a IN ("%sourcedir%\*") DO DEL "%%a"

SET "sourcedir=C:\Program Files (x86)\Steam\steamapps\common\dota 2 beta\game\dota\maps\backgrounds\"
FOR /d %%a IN ("%sourcedir%\*") DO RD /S /Q "%%a"
FOR %%a IN ("%sourcedir%\*") DO DEL "%%a"

START "" "C:\Program Files (x86)\Steam\steam.exe"

GOTO :EOF
