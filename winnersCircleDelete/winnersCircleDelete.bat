SET DLPATH="C:\Work\Apex Data Loader 22.0"
SET DLCONF="C:\Work\Apex Data Loader 22.0\cliq_process\winnersCircleDelete\config"
SET DLDATA="C:\Work\Apex Data Loader 22.0\cliq_process\winnersCircleDelete\write"
call %DLPATH%\_jvm\bin\java.exe -cp %DLPATH%\DataLoader.jar -Dsalesforce.config.dir=%DLCONF% com.salesforce.dataloader.process.ProcessRunner process.name=winnersCircleDelete
REM To rotate your export files, uncomment the line below
REM copy %DLDATA%\winnersCircleDelete.csv %DLDATA%\%date:~10,4%%date:~7,2%%date:~4,2%-%time:~0,2%-winnersCircleDelete.csv
