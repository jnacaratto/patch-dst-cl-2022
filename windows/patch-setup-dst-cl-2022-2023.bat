w32tm /tz
regedit.exe /S patch-dst-cl-2022-2023.reg
net stop w32time
net start w32time
w32tm /tz
pause
