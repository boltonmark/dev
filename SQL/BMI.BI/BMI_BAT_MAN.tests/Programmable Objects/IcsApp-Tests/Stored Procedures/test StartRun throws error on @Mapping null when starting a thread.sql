﻿IF OBJECT_ID('[IcsApp-Tests].[test StartRun throws error on @Mapping null when starting a thread]') IS NOT NULL
	DROP PROCEDURE [IcsApp-Tests].[test StartRun throws error on @Mapping null when starting a thread];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create   procedure [IcsApp-Tests].[test StartRun throws error on @Mapping null when starting a thread]
as
begin
	--! Mock all the calls that might be made by this wrapper sproc
	exec tSQLt.SpyProcedure @ProcedureName = N'ics.ProcessRunStart' ;
	exec tSQLt.SpyProcedure @ProcedureName = N'ics.SubProcessRunStart' ;
	exec tSQLt.SpyProcedure @ProcedureName = N'ics.ThreadRunStart' ;
	
	exec tSQLt.ExpectException @ExpectedMessagePattern = '%Mapping Name input can not be null or empty when starting a new thread: "C"%'
	
	exec IcsApp.StartRun
		@ProcessName = 'A'
	  , @IcrtProcessId = 99
	  , @ProcessRunId = 11
	  , @SubProcessName = null
	  , @SubProcessRunId = 22
	  , @MappingConfigTaskName = 'C'
	  , @MappingName = null
end;
GO
