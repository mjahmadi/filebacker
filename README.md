# filebacker
Simple Windows BATCH file script to take custom compressed backup from files and directories. FileBacker is good for scheduled backup task.

# requirements
At last a Windows machine with support of 'forfiles' command. [etc XP, Win7, Win8, Win8.1, Win10]. As the script using 7zip software to take compressed backup surly you need true 7zip installed in your system.

# config
Befor you try to run the 'filebacker.bat' script in Windows CMD you must set some variable inside of script as we describe in it. Otherwise the script won't work properly.

# sample config
```
set BACKUP_MAX_KEEP=60
set BACKUP_FROM=C:\
set BACKUP_TO=X:\Backups\
set BACKUP_PREFIX=drive_c
set BACKUP_FORMAT=7z
set BACKUP_COMPRESS_LEVEL=9
set BACKUP_FILENAME='%BACKUP_PREFIX%%date:~10,4%_%date:~4,2%_%date:~7,2%.%BACKUP_FORMAT%'
```

# usage
```
filebacker.bat
```
