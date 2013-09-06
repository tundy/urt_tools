@echo off 
rem -----------------------------------------------------------------------------------
rem               Devmap
rem -----------------------------------------------------------------------------------

:PROCESS
	DEL "%URT_BASEPATH%\q3ut4\maps\%~n1.TGA"
	call %URT_ENGINEPATH% +set fs_basepath %URT_BASEPATH% +set sv_pure 0 +devmap %~n1
pause