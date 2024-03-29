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

:DetectMR11
if not exist %squadpublicconfig%\MapRotation\MapRotation11.cfg goto MapRotation11
echo "Detected Missing MapRotation11 from MapRotation Folder"

:DetectMR12
if not exist %squadpublicconfig%\MapRotation\MapRotation12.cfg goto MapRotation12
echo "Detected Missing MapRotation12 from MapRotation Folder"

:DetectMR13
if not exist %squadpublicconfig%\MapRotation\MapRotation13.cfg goto MapRotation13
echo "Detected Missing MapRotation13 from MapRotation Folder"

:DetectMR14
if not exist %squadpublicconfig%\MapRotation\MapRotation14.cfg goto MapRotation14
echo "Detected Missing MapRotation14 from MapRotation Folder"

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
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation4.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation4.cfg %squadpublicconfig%\MapRotation4.cfg*
ren %squadpublicconfig%\MapRotation4.cfg MapRotation.cfg
echo 4
goto end

:MapRotation5
move /y %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg
ren %squadpublicconfig%\MapRotation\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation5.cfg
move /y %squadpublicconfig%\MapRotation\MapRotation6.cfg %squadpublicconfig%\MapRotation\MapRotation6.cfg
ren %squadpublicconfig%\MapRotation\MapRotation6.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg
echo 5

:MapRotation6
move /y  %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg*
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation6.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation7.cfg %squadpublicconfig%\MapRotation7.cfg*
ren %squadpublicconfig%\MapRotation7.cfg MapRotation.cfg
echo 6
goto end

:MapRotation7
move /y  %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg*
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation7.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation8.cfg %squadpublicconfig%\MapRotation8.cfg*
ren %squadpublicconfig%\MapRotation8.cfg MapRotation.cfg
echo 7
goto end

:MapRotation8
move /y  %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg*
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation8.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation9.cfg %squadpublicconfig%\MapRotation9.cfg*
ren %squadpublicconfig%\MapRotation9.cfg MapRotation.cfg
echo 8
goto end

:MapRotation9
move /y  %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg*
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation9.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation10.cfg %squadpublicconfig%\MapRotation10.cfg*
ren %squadpublicconfig%\MapRotation10.cfg MapRotation.cfg
echo 9
goto end

:MapRotation10
move /y  %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg*
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation10.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation11.cfg %squadpublicconfig%\MapRotation11.cfg*
ren %squadpublicconfig%\MapRotation11.cfg MapRotation.cfg
echo 10
goto end

:MapRotation11
move /y  %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg*
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation11.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation12.cfg %squadpublicconfig%\MapRotation12.cfg*
ren %squadpublicconfig%\MapRotation12.cfg MapRotation.cfg
echo 11
goto end

:MapRotation12
move /y  %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg*
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation12.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation13.cfg %squadpublicconfig%\MapRotation13.cfg*
ren %squadpublicconfig%\MapRotation13.cfg MapRotation.cfg
echo 12
goto end

:MapRotation13
move /y  %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg*
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation13.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation14.cfg %squadpublicconfig%\MapRotation14.cfg*
ren %squadpublicconfig%\MapRotation14.cfg MapRotation.cfg
echo 13
goto end

:MapRotation14
move /y  %squadpublicconfig%\MapRotation.cfg %squadpublicconfig%\MapRotation\MapRotation.cfg*
ren %squadpublicconfig%\MapRotation\MapRotation.cfg MapRotation14.cfg
move /y  %squadpublicconfig%\MapRotation\MapRotation1.cfg %squadpublicconfig%\MapRotation1.cfg*
ren %squadpublicconfig%\MapRotation1.cfg MapRotation.cfg
echo 14
goto end

:end
:: Pause added to test compeltiion and see errors.
pause

:: Possibly More to follow on.
:: Still need to start the sevrers tuilizing this
:: rather, lets use a different script, and have this script call upon it instaed
:: --NOX
