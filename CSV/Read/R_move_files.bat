@echo off
setlocal enabledelayedexpansion

REM List of folder name prefixes
set names=beckhoff br siemens open wago

REM Loop through all possible combinations
for %%a in (%names%) do (
    for %%b in (%names%) do (
        set folder=%%a_to_%%b

        REM If folder exists, move matching files
        if exist "!folder!" (
            echo Processing "!folder!"
            move "!folder!_*" "!folder!\" 2>nul
        )
    )
)

echo Done.
pause