echo off
set ip=192.168.10.1
set int Fps=120
set string Link speed=1000Mbps
set string time=1ms
set int TTL=128
set string minimum=0ms
set string maximum=0ms
set string average=0ms


:loop
for /f "delims=" %%a in ('ping %ip% -n 1 -1 1024 ^| findstr "TTL out"') do echo %date% %time% - %%a >> 192.168.10.1_ping.txt
sleep 1
goto :loop
