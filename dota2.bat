 @ECHO OFF
SETLOCAL
SET "sourcedir=C:\Program Files (x86)\Steam\steamapps\common\dota 2 beta\game\dota\panorama\videos\"
SET "keepdir=heroes"

FOR /d %%a IN ("%sourcedir%\*") DO IF /i NOT "%%~nxa"=="%keepdir%" RD /S /Q "%%a"
FOR %%a IN ("%sourcedir%\*") DO IF /i NOT "%%~nxa"=="%keepfile%" DEL "%%a"

SET "sourcedir=C:\Program Files (x86)\Steam\steamapps\common\dota 2 beta\game\dota\maps\backgrounds\"

FOR /d %%a IN ("%sourcedir%\*") DO IF /i NOT "%%~nxa"=="%keepdir%" RD /S /Q "%%a"
FOR %%a IN ("%sourcedir%\*") DO IF /i NOT "%%~nxa"=="%keepfile%" DEL "%%a"

START "" "C:\Program Files (x86)\Steam\steamapps\common\dota 2 beta\game\bin\win64\dota2.exe" -novid -gamestateintegration

GOTO :EOF 
