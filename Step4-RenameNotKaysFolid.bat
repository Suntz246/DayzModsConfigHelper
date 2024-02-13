@echo off
for /d %%i in (*) do (
    if exist "%%i\key" (
        ren "%%i\key" "keys"
        echo %%i KeysNameFixed
    ) else (
        if exist "%%i\keys" (
            echo %%i Keys Yes
        ) else (
            echo %%i Keys No
        )
    )
    echo.
)
echo Step4 is Ok
pause
