@echo off
setlocal enabledelayedexpansion

rem 创建一个空文本文件
type nul > mods.txt

set "folders="

rem 遍历当前文件夹下的所有文件夹
for /d %%i in (*) do (
    rem 将文件夹名称添加到 folders 变量中
    set "folders=!folders!mods\%%i;"
)

rem 将 folders 的内容写入 mods.txt 文件，内容开头添加 -mod=
echo -mod=%folders:~0,-1% > mods.txt

endlocal
echo Step2 is Ok
pause
