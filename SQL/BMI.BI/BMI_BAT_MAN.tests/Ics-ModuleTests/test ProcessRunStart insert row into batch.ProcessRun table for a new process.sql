﻿create   procedure [Ics-ModuleTests].[test ProcessRunStart insert row into batch.ProcessRun table for a new process]
as
	begin

		declare @SetDate datetime = getdate() ;
		
		alter table batch.Process nocheck constraint all ;
		alter table batch.ProcessRun nocheck constraint all ;
		
		delete	from batch.Process ;
		delete	from batch.ProcessRun ;
		dbcc checkident('batch.ProcessRun', reseed, 0) ;

		exec tSQLt.SpyProcedure @ProcedureName = N'log4.ExceptionHandler' ;
		exec [ics].[ProcessRunStart]
			@ProcessName = 'Test PN1'
		  , @IcrtProcessId = 999
		  , @SetDate = @SetDate ;
		  
		create table #Expected
		(
			[ProcessRunId]				[int]
		  , [BatchProcessId]			[int]		   null
		  , [IcrtProcessId]				[int]		   null
		  , [StartTime]					[datetime]	   null
		  , [EndTime]					[datetime]	   null
		  , [RunStateId]				[int]		   null
		  , [EndState]					[varchar](16)  collate Latin1_General_CS_AS null
		  , [EndMessage]				[varchar](500) collate Latin1_General_CS_AS null
		  , [MinChangeDataCapturePoint] [datetime]	   null
		  , [MaxChangeDataCapturePoint] [datetime]	   null
		) ;

		insert into #Expected
		(
			ProcessRunId
		  , BatchProcessId
		  , IcrtProcessId
		  , StartTime
		  , EndTime
		  , RunStateId
		  , EndState
		  , EndMessage
		  , MinChangeDataCapturePoint
		  , MaxChangeDataCapturePoint
		)
		select
			1		 as [ProcessRunId]
		  , 1		 as [BatchProcessId]
		  , 999		 [IcrtProcessId]
		  , @SetDate as [StartTime]
		  , null	 [EndTime]
		  , 1		 as [RunStateId]
		  , ''		 as [EndState]
		  , ''		 as [EndMessage]
		  , @SetDate [MinChangeDataCapturePoint]
		  , @SetDate [MaxChangeDataCapturePoint] ;


		exec tSQLt.AssertEqualsTable '#Expected', 'batch.ProcessRun' ;

	end ;