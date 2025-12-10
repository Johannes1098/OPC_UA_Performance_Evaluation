@echo off
setlocal enabledelayedexpansion

for /r %%f in (*) do (
    set "name=%%~nxf"
    ren "%%f" "R_!name!"
)

echo Done.
pause