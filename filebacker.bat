@echo off

setlocal

rem set BACKUP_MAX_KEEP=<MAXIMUM DAYS TO KEEP BACKUP FILES>
set BACKUP_FROM=<PATH TO TAKE BACKUP>
set BACKUP_TO=<PATH TO CREATE BACKUP FILE>
set BACKUP_PREFIX=<BACKUP FILE PRIFIX>
set BACKUP_FORMAT=<BACKUP COMPRESSION FORMAT '7z, zip, bzip, gzip'>
set BACKUP_COMPRESS_LEVEL=<BACKUP COMPRESSION LEVEL '0, 9'>
set BACKUP_FILENAME=<BACKUP FILENAME [etc '%BACKUP_PREFIX%%date:~10,4%_%date:~4,2%_%date:~7,2%.%BACKUP_FORMAT%']>

PATH=C:\Program Files (x86)\7-Zip;C:\Program Files\7-Zip;%PATH%

echo FileBacker by M.J.Ahmadi
echo Simple Windows .bat file script to take custom compressed backup from files and directories using 7zip

echo Backup from '%BACKUP_FROM%' to '%BACKUP_TO%'

7z.exe a -mmt -mx%BACKUP_COMPRESS_LEVEL% -t%BACKUP_FORMAT% %BACKUP_TO%%BACKUP_FILENAME% %BACKUP_FROM%

rem if %ERRORLEVEL% == 0 forfiles /p %BACKUP_TO% /s /m *.%BACKUP_FORMAT% /d -%BACKUP_MAX_KEEP% 2>nul /c "cmd /c del /f @path"
