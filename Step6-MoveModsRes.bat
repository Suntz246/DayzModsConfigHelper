@echo off

rem 创建mods文件夹并移动当前目录下的所有文件夹到mods文件夹中
if not exist mods mkdir mods
for /d %%i in (*) do (
    move "%%i" mods
)

rem 移动mods文件夹到上级目录
move mods ..
echo Ok
pause