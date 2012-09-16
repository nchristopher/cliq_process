@echo off

call "C:\Work\Apex Data Loader 22.0\cliq_process\cuttingEdgeExport\cuttingEdgeExport.bat"
echo %ERRORLEVEL%

IF NOT %ERRORLEVEL% == 0 (
	echo "Error in cuttingEdgeExport!!"
	exit /B 1
) ELSE (
	echo "-->Export Done!!"
)

call "C:\Work\Apex Data Loader 22.0\cliq_process\cuttingEdgeDelete\cuttingEdgeDelete.bat"

IF NOT %ERRORLEVEL% == 0 (
	echo "Error in cuttingEdgeDelete!!"
	exit /B 1
) ELSE (
	echo "-->Delete Done!!"
)

call "C:\Work\Apex Data Loader 22.0\cliq_process\cuttingEdgeInsert\cuttingEdgeInsert.bat"

IF NOT %ERRORLEVEL% == 0 (
	echo "Error in cuttingEdgeInsert!!"
	exit /B 1
) ELSE (
	echo "-->Insert Done!!"
)