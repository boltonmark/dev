﻿CREATE PROCEDURE [IcsApp-Tests].[test ProcessRunStart throws error on @ProcessID zero]
AS
BEGIN
	EXEC tSQLt.SpyProcedure N'log4.ExceptionHandler', N'Set @ErrorNumber = 1';
	EXEC tSQLt.SpyProcedure N'log4.JournalWriter';

	EXEC tSQLt.ExpectException @ExpectedErrorNumber = 50000

	EXEC dbo.ProcessRunStart
	@ProcessName = 'a', 
	@ProcessID=0 

END;