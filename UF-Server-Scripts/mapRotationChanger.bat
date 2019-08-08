@echo off

::sets default App Directories
set steamcmd="C:\steamcmd\steamcmd.exe"
set squadpublicconfig="C:\Servers\80 Slot Private\SquadGame\ServerConfig"
set squadprivateconfig="C:\Servers\80 Slot Private\SquadGame\ServerConfig"
set squadprivate="C:\servers\80 Slot Private"
set squadpublic="C:\servers\80 Slot Public"
set squadbasic="C:\servers\squadserverbasic"
set rootdir="C:\servers"
echo 0

:: Detects for file names, and points to correct missing file name code exec
:: I don't think it is currently echoing the detected missing map.

:DetectMR1
if not exist %squadpublicconfig%\MapRotation\MapRotation1.cfg goto MapRotation1
echo "Detected Missing MapRotation1 from MapRotation Folder"

:DetectMR2
if not exist %squadpublicconfig%\MapRotation\MapRotation2.cfg goto MapRotation2
echo "Detected Missing MapRotation2 from MapRotation Folder"

:DetectMR3
if not exist %squadpublicconfig%\MapRotation\MapRotation3.cfg goto MapRotation3
echo "Detected Missing MapRotation3 from MapRotation Folder"

:DetectMR4
if not exist %squadpublicconfig%\MapRotation\MapRotation4.cfg goto MapRotation4
echo "Detected Missing MapRotation4 from MapRotation Folder"

:DetectMR5
if not exist %squadpublicconfig%\MapRotation\MapRotation5.cfg goto MapRotation5
echo "Detected Missing MapRotation5 from MapRotation Folder"

:DetectMR6
if not exist %squadpublicconfig%\MapRotation\MapRotation6.cfg goto MapRotation6
echo "Detected Missing MapRotation6 from MapRotation Folder"

:DetectMR7
if not exist %squadpublicconfig%\MapRotation\MapRotation7.cfg goto MapRotation7
echo "Detected Missing MapRotation7 from MapRotation Folder"

:DetectMR8
if not exist %squadpublicconfig%\MapRotation\MapRotation8.cfg goto MapRotation8
echo "Detected Missing MapRotation8 from MapRotation Folder"

:DetectMR9
if not exist %squadpublicconfig%\MapRotation\MapRotation9.cfg goto MapRotation9
echo "Detected Missing MapRotation9 from MapRotation Folder"

:DetectMR10
if not exist %squadpublicconfig%\MapRotation\MapRotation10.cfg goto MapRotation10
echo "Detected Missing MapRotation10 from MapRotation Folder"

:: Moves running maprotation to storage, moves new maprotation to running.
:: Renames running to storage/detection name, and renames new to running name
:MapRotation1
move /y  %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg*
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation1.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation2.cfg %squadpublicconfig%\MapRotation2.cfg*
ren %squadpublicconfig%\MapRotation2.cfg MapRotation.cfg
echo 1
goto end

:MapRotation2
move /y  %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg*
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation2.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation3.cfg %squadpublicconfig%\MapRotation3.cfg*
ren %squadpublicconfig%\MapRotation3.cfg MapRotation.cfg
echo 2
goto end

:MapRotation3
move /y  %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg*
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation3.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation4.cfg %squadpublicconfig%\MapRotation4.cfg*
ren %squadpublicconfig%\MapRotation4.cfg MapRotation.cfg
echo 3
goto end

:MapRotation4
move /y  %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg*
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation1.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation2.cfg %squadpublicconfig%\MapRotation2.cfg*
ren %squadpublicconfig%\MapRotation2.cfg MapRotation.cfg
echo 4
goto end

:MapRotation5
move /y %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg
ren %squadpublicconfig%\MapRotation\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation5.cfg
move /y %squadpublicconfig%\MapRotation\MapRotation1.cfg %squadpublicconfig%\MapRotation\MapRotation1.cfg
ren %squadpublicconfig%\MapRotation\MapRotation1.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg
echo 5

goto end
:end
pause

:: Possibly More to follow on.
:: Still need to start the sevrers tuilizing this
:: rather, lets use a different script, and have this script call upon it instaed
:: --NOX
