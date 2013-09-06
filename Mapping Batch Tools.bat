@echo off
title Mapping Batch Tools - %~nx1
color F1

:Start
	cd /d %~dp0
	call ".\conf.bat"
	
:MainMenu
	cls
	echo --------------------------------------------
	echo Welcome to the - Batch Mapping Tool -
	echo --------------------------------------------
	echo 1. Single Test Compile
	echo 2. Advanced Test Compile
	echo 3. Final Compile
	echo 4. Decompile
	echo 5. Devmap
	echo 6. Create Pk3
	echo 9. Exit
	echo --------------------------------------------
	
	set choice=
	set /p choice=Choose an option:
	
	if not '%choice%'=='' set choice=%choice:~0,1%
	if '%choice%'=='9' goto :Exit
	if '%choice%'=='6' goto :Package
	if '%choice%'=='5' goto :Devmap
	if '%choice%'=='4' goto :Decompile
	if '%choice%'=='3' goto :FinalCompile
	if '%choice%'=='2' goto :AdvancedTestCompile
	if '%choice%'=='1' goto :SingleTestCompile
	
goto :MainMenu

:SingleTestCompile
	call %SINGLE_TEST_COMPILE% %1
	goto :MainMenu

:AdvancedTestCompile
	call %ADVANCED_TEST_COMPILE% %1
	goto :MainMenu

:FinalCompile
	call %FINAL_COMPILE% %1
	goto :MainMenu

:Decompile
	call %DECOMPILE% %1
	goto :MainMenu

:Devmap
	echo %DEVMAP%
	echo %1
	call %DEVMAP% %1
	goto :MainMenu

:Package
	call %PACKAGER% %1
	goto :MainMenu

:Exit
	exit