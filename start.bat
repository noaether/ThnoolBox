@echo off
title Name Compile
setlocal EnableDelayedExpansion

:start
REM
REM     COMPILE CALCULATHNEED
REM
set /p a="CalculaThneed Version: "
IF "!a!"=="" ( echo Build cancelled for CalculaThneed. ) ELSE (
    pyinstaller src/CalculaThneed/pymain.spec --noconfirm --clean -w --log-level ERROR --distpath ./dist/CalculaThneed
    rename "dist\\CalculaThneed\\CalculaThneed.exe" "CaculaThneed-!a!.exe"
    echo Build completed at !time! on !date!
    echo !a! @ !time! on !date! >> dist\\CalculaThneed\\VERSION
)
REM
REM     COMPILE MINETHNEEDER
REM
set /p b="MineThneeder Version: "
IF "!b!"=="" ( echo Build cancelled for MineThneeder. ) ELSE (
    pyinstaller src/MineThneeder/pymain.spec --noconfirm --clean -w --log-level ERROR --distpath ./dist/MineThneeder
    rename "dist\\MineThneeder\\MineThneeder.exe" "MineThneeder-!b!.exe"
    echo !b! @ !time! on !date! >> dist\\MineThneeder\\VERSION
)
REM
REM     COMPILE THNEXTEDITOR
REM
set /p c="ThnextEditor Version: "
IF "!c!"=="" ( echo Build cancelled for ThnextEditor. ) ELSE (
    pyinstaller src/ThnextEditor/pymain.spec --noconfirm --clean -w --log-level ERROR --distpath ./dist/ThnextEditor
    rename "dist\\ThnextEditor\\ThnextEditor.exe" "ThnextEditor-!c!.exe"
    echo !c! @ !time! on !date! >> dist\\ThnextEditor\\VERSION
)
REM
REM     COMPILE THNOOGLE
REM
set /p d="Thnoogle Version: "
IF "!d!"=="" ( echo Build cancelled for Thnoogle. ) ELSE (
    pyinstaller src/Thnoogle/pymain.spec --noconfirm --clean -w --log-level ERROR --distpath ./dist/Thnoogle
    rename "dist\\Thnoogle\\Thnoogle.exe" "Thnoogle-!d!.exe"
    echo !d! @ !time! on !date! >> dist\\Thnoogle\\VERSION
)
REM
REM     COMPLIE THNOTES
REM
set /p e="Thnotes Version: "
IF "!e!"=="" ( echo Build cancelled for Thnotes. ) ELSE (
    pyinstaller src/Thnotes/pymain.spec --noconfirm --clean -w --log-level ERROR --distpath ./dist/Thnotes
    rename "dist\\Thnotes\\Thnotes.exe" "Thnotes-!e!.exe"
    echo !e! @ !time! on !date! >> dist\\Thnotes\\VERSION
)
REM
REM     COMPLIE THNEEDIAPLAYER
REM
set /p f="ThneediaPlayer Version: "
IF "!f!"=="" ( echo Build cancelled for ThneediaPlayer. ) ELSE (
    pyinstaller src/ThneediaPlayer/pymain.spec --noconfirm --clean -w --log-level ERROR --distpath ./dist/ThneediaPlayer
    rename "dist\\ThneediaPlayer\\ThneediaPlayer.exe" "ThneediaPlayer-!f!.exe"
    echo !f! @ !time! on !date! >> dist\\Thnotes\\VERSION
)