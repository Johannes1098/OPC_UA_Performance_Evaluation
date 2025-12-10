@echo off
setlocal enabledelayedexpansion

set names=beckhoff br siemens open wago

for %%a in (%names%) do (
    for %%b in (%names%) do (
        set folder=%%a_to_%%b

        if exist "!folder!" (
            echo Processing "!folder!"

            REM Move files exactly matching
            move "*!folder!_*" "!folder!\" 2>nul
        )
    )
)

echo Done.
pause