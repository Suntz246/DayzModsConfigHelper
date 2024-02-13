@echo off
set "current_dir=%CD%"

rem 复制Addons文件夹内容到上级目录的Addons文件夹中
for /d %%i in ("%current_dir%\*") do (
    if exist "%%i\Addons" (
        xcopy "%%i\Addons\*" "%current_dir%\..\Addons\" /s /y
    )
)

rem 复制Keys文件夹内容到上级目录的Keys文件夹中
for /d %%i in ("%current_dir%\*") do (
    if exist "%%i\Keys" (
        xcopy "%%i\Keys\*" "%current_dir%\..\Keys\" /s /y
    )
)

echo Step5 is OK
pause
