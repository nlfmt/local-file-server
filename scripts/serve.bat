@REM A script to start the file server.
@REM Copyright (c) 2022 nlfmt

@REM Put this script's folder to your environment path.

@REM Usage: serve [path] [port]
@REM Examples:
@REM serve . 8000
@REM serve C:\Users\nlfmt\Desktop\


@echo off

@Rem This stops the script from asking you to confirm after CTRL+C
if "%~1"=="-FIXED_CTRL_C" (
   shift
) else (
   call <nul %0 -FIXED_CTRL_C %~dp0 %*
   goto :EOF
)

node %1\..\main.js %2 %3