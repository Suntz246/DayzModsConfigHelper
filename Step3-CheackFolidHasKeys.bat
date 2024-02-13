@echo off
for /d %%i in (*) do (
    if exist "%%i\keys" (
        echo %%i Keys Yes
    ) else (
        if exist "%%i\Keys" (
            echo %%i Keys Yes
        ) else (
            echo %%i Keys No
        )
    )
    echo.
)

echo Step3 is Ok
pause >nul
