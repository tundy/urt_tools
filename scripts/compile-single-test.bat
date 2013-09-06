@echo off
rem -----------------------------------------------------------------------------------
rem               Advanced Test Compile
rem -----------------------------------------------------------------------------------
 
:PROCESS
	CLS
	set path_options=-fs_basepath %URT_BASEPATH% -fs_game q3ut4 -game q3ut4
	%Q3MAP2_PATH% -v -threads 4 -meta -patchmeta -subdivisions 1 -custinfoparms %path_options% %1
	%Q3MAP2_PATH% -v -threads 4 -vis -saveprt %path_options% %1
	%Q3MAP2_PATH% -v -threads 4 -light -nocollapse -fast -faster -filter -bounce 3 -patchshadows -gamma 1.7 -samples 2 -custinfoparms %path_options% %1
	pause