#!/bin/sh
export DLPATH="C:\Work\Apex Data Loader 22.0"
export DLCONF="C:\Work\Apex Data Loader 22.0\cliq_process\winnersCircleExport\config"
java -cp $DLPATH/DataLoader.jar -Dsalesforce.config.dir=$DLCONF com.salesforce.dataloader.process.ProcessRunner process.name=winnersCircleExport
