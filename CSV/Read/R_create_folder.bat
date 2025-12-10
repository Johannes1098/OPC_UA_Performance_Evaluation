@echo off
setlocal enabledelayedexpansion

set names=beckhoff br siemens open wago

for %%a in (%names%) do (
    for %%b in (%names%) do (
        mkdir "%%a_to_%%b"
    )
)