@echo off

:start

::sets default App Directories
set steamcmd="C:\steamcmd\steamcmd.exe"
set squadpublic="C:\servers\80 Slot Public"
set squadprivate="C:\servers\80 Slot Private"
set squadbasic="C:\servers\squadserverbasic"
set rootdir="C:\servers"

:BackupCreation

::Creates Backup Folders
if exist %rootdir%\ConfigBackupPublic echo "Public Backup Folder Already Exists"
if not exist %rootdir%\ConfigBackupPublic mkdir %rootdir%\ConfigBackupPublic

if exist %rootdir%\ConfigBackupPrivate echo "Private Backup Folder Already Exists"
if not exist %rootdir%\ConfigBackupPrivate mkdir %rootdir%\ConfigBackupPrivate

::Copies Config Files to Backup Folders
xcopy %squadpublic%\SquadGame\ServerConfig %rootdir%\ConfigBackupPublic\ /e /i /f /v /y
xcopy %squadprivate%\SquadGame\ServerConfig %rootdir%\ConfigBackupPrivate\ /e /i /f /v /y

:InstallSquad

::Runs the Steam command to install the new squad version to Squad Server Basic, does it again just to be sure
%steamcmd% +login anonymous +force_install_dir "C:\servers\SquadServerBasic" +app_update 403240 validate +quit

%steamcmd% +login anonymous +force_install_dir "C:\servers\SquadServerBasic" +app_update 403240 validate +quit

:copyserver

::Copies Game Files from Downloaded Location to two server locations
xcopy %squadbasic% %squadpublic% /e /i /f /v /y
xcopy %squadbasic% %squadprivate% /e /i /f /v /y

:copyconfig

::Copies Config Files from backup to root directory
xcopy %rootdir%\ConfigBackupPublic %squadpublic%\SquadGame\ServerConfig\ /e /i /f /v /y
xcopy %rootdir%\ConfigBackupPrivate %squadprivate%\SquadGame\ServerConfig\ /e /i /f /v /y

:endoftasks
echo Check that the configs were properly copied over.
echo Were they properly copied over?
set /P i="Y or N? "
if /I "%i%" EQU "Y" goto :runserverquestion
if /I "%i%" EQU "N" goto :copyconfig
goto end


::The following has been untested up until this point. If this works, please let NOX know, as he will be able to resolve this in the future.


:end
