echo no close this window
:srcds
echo (%time%) srcds started.
start /wait DayZServer_x64.exe -config=serverDZ.cfg -port=1234 -profiles=这里修改为你自定义的存档位置 -freezecheck -noFilePatching -scrAllowFileWrite 从这开始复制上个文件夹生成的mods.txt文件内容到这
echo (%time%) WARNING: srcds closed or crashed, restarting.
goto srcds