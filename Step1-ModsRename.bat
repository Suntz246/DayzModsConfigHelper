@echo off
setlocal enabledelayedexpansion

rem 遍历当前文件夹下所有文件夹
for /d %%i in (@*) do (
    rem 获取文件夹名称
    set "folder=%%i"
    rem 检查是否以 @ 开头
    set "firstChar=!folder:~0,1!"
    if "!firstChar!"=="@" (
        rem 去除 @ 符号
        set "folder=!folder:~1!"
        rem 删除所有空格和特殊符号
        set "folder=!folder: =!"
        set "folder=!folder:[$&(){}^=;]!"
        rem 将特定格式字符串进行合并
        set "folder=!folder:Unlimited Stamina=UnlimitedStamina!"
        set "folder=!folder:Ear-Plugs=EarPlugs!"
        rem 重命名文件夹
        ren "%%i" "!folder!"
    )
)

endlocal
echo Step1 is Ok
pause
