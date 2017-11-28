﻿IF OBJECT_ID('[tSQLt].[Private_FindConstraint]') IS NOT NULL
	DROP FUNCTION [tSQLt].[Private_FindConstraint];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE FUNCTION [tSQLt].[Private_FindConstraint]
(
  @TableObjectId INT,
  @ConstraintName NVARCHAR(MAX)
)
RETURNS TABLE
AS
RETURN
  SELECT TOP(1) constraints.object_id AS ConstraintObjectId, type_desc AS ConstraintType
    FROM sys.objects constraints
    CROSS JOIN tSQLt.Private_GetOriginalTableInfo(@TableObjectId) orgTbl
   WHERE @ConstraintName IN (constraints.name, QUOTENAME(constraints.name))
     AND constraints.parent_object_id = orgTbl.OrgTableObjectId
   ORDER BY LEN(constraints.name) ASC;
GO
