@echo on
echo echoing PATH
PATH=C:\Program Files\Microsoft MPI\Bin\;%PATH%
call mpiexec -n 6 "C:\Users\samra\AppData\Roaming\McNeel\Rhinoceros\7.0\Plug-ins\RhinoCFD (376ce15a-ac8d-4c58-ae2c-913728cd2930)\2022.1.4.1018\d_earth\d_windf\earexe.exe"
pause
