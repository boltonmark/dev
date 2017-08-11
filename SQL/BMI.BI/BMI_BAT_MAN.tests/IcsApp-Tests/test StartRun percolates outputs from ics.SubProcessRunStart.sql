﻿create   procedure [IcsApp-Tests].[test StartRun percolates outputs from ics.SubProcessRunStart]
as
begin
	declare @_ExpectedSubProcessRunId int = 33
	declare @_ExpectedRunType varchar(10) = 'DELTA'
	declare @_ExpectedInstruction varchar(255) = 'SKIP'
	declare @_ExpectedMessage varchar(255) = 'Do something else'

	--! Mock all the calls that might be made by this wrapper sproc
	declare @_CmdToRun varchar(1000) = 'select @SubProcessRunId = ' + cast(@_ExpectedSubProcessRunId as varchar(16))
						+ ', @RunType = ''' + @_ExpectedRunType + ''''
						+ ', @Instruction = ''' + @_ExpectedInstruction + ''''
						+ ', @Message = ''' + @_ExpectedMessage + ''''

	exec tSQLt.SpyProcedure @ProcedureName = N'ics.ProcessRunStart' ;
	exec tSQLt.SpyProcedure @ProcedureName = N'ics.SubProcessRunStart', @CommandToExecute = @_CmdToRun ;
	exec tSQLt.SpyProcedure @ProcedureName = N'ics.ThreadRunStart' ;

	declare @_ProcessName varchar(100) = 'A', @_IcrtProcessId int = 999 ;

	declare @_ActualSubProcessRunId int
	declare @_ActualInstruction varchar(255)
	declare @_ActualRunType varchar(10)
	declare @_ActualMessage varchar(255)
	
	exec IcsApp.StartRun
		@ProcessName = 'A'
	  , @IcrtProcessId = 99
	  , @ProcessRunId = 22
	  , @SubProcessName = 'B'
	  , @SubProcessRunId = @_ActualSubProcessRunId out
	  , @RunType = @_ActualRunType out
	  , @Instruction = @_ActualInstruction out
	  , @Message = @_ActualMessage out

	--! Assertions
	exec tSQLt.AssertEquals @Expected = @_ExpectedSubProcessRunId, @Actual = @_ActualSubProcessRunId, @Message = N'@SubProcessRunId output value wrong: ' ;
	exec tSQLt.AssertEqualsString @Expected = @_ExpectedRunType, @Actual = @_ActualRunType, @Message = N'@RunType output value wrong: ' ;
	exec tSQLt.AssertEqualsString @Expected = @_ExpectedInstruction, @Actual = @_ActualInstruction, @Message = N'@Instruction output value wrong: ' ;
	exec tSQLt.AssertEqualsString @Expected = @_ExpectedMessage, @Actual = @_ActualMessage, @Message = N'@Message output value wrong: ' ;
end;