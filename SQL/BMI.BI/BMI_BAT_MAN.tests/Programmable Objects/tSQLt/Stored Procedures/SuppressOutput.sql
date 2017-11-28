﻿IF OBJECT_ID('[tSQLt].[SuppressOutput]') IS NOT NULL
	DROP PROCEDURE [tSQLt].[SuppressOutput];

GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [tSQLt].[SuppressOutput] (@command [nvarchar] (max))
WITH EXECUTE AS CALLER
AS EXTERNAL NAME [tSQLtCLR].[tSQLtCLR.StoredProcedures].[SuppressOutput]
GO
