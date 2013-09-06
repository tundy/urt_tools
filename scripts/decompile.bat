@echo off
rem -----------------------------------------------------------------------------------
rem               Decompile BSP -> MAP
rem -----------------------------------------------------------------------------------

:PROCESS
	%Q3MAP2_PATH% -convert -format map -fs_basepath %URT_BASEPATH% -fs_game q3ut4 -game q3ut4 -v %1
	pause
exit