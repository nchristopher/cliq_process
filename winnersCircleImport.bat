@echo off

call "C:\Work\Apex Data Loader 22.0\cliq_process\winnersCircleExport\winnersCircleExport.bat"
echo %ERRORLEVEL%

IF NOT %ERRORLEVEL% == 0 (
	echo "Error in winnersCircleExport!!"
	exit /B 1
) ELSE (
	echo "-->Export Done!!"
)

call "C:\Work\Apex Data Loader 22.0\cliq_process\winnersCircleDelete\winnersCircleDelete.bat"

IF NOT %ERRORLEVEL% == 0 (
	echo "Error in winnersCircleDelete!!"
	exit /B 1
) ELSE (
	echo "-->Delete Done!!"
)

call "C:\Work\Apex Data Loader 22.0\cliq_process\winnersCircleInsert\winnersCircleInsert.bat"

IF NOT %ERRORLEVEL% == 0 (
	echo "Error in winnersCircleInsert!!"
	exit /B 1
) ELSE (
	echo "-->Insert Done!!"
)