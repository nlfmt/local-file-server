@REM Copyright (c) 2022 nlfmt

@REM A script to start the file server.
@REM This requires you to have node installed and to have installed all modules.
@REM If you want to use this program without any of that, use the prebuilt binaries. (https://github.com/nlfmt/local-file-server/releases)


@REM Put this script's folder into your PATH.

@REM Usage: serve [path] [port]
@REM Examples:
@REM serve . 8000
@REM serve C:\Users\nlfmt\Desktop\


@echo off

@REM This stops the script from asking you to confirm after CTRL+C
if "%~1"=="-FIXED_CTRL_C" (
   shift
) else (
   @REM pass ~dp0 because using call will lose the path
   call <nul %0 -FIXED_CTRL_C %~dp0 %*
   goto :EOF
)

node %1\..\main.js %2 %3