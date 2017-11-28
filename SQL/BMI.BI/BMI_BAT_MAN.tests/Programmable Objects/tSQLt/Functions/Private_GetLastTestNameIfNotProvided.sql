﻿IF OBJECT_ID('[tSQLt].[Private_GetLastTestNameIfNotProvided]') IS NOT NULL
	DROP FUNCTION [tSQLt].[Private_GetLastTestNameIfNotProvided];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

----------------------------------------------------------------------
CREATE FUNCTION [tSQLt].[Private_GetLastTestNameIfNotProvided](@TestName NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
  IF(LTRIM(ISNULL(@TestName,'')) = '')
  BEGIN
    SELECT @TestName = TestName 
      FROM tSQLt.Run_LastExecution le
      JOIN sys.dm_exec_sessions es
        ON le.SessionId = es.session_id
       AND le.LoginTime = es.login_time
     WHERE es.session_id = @@SPID;
  END

  RETURN @TestName;
END
GO
