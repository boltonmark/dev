CREATE SCHEMA [IcsApp-Tests]
AUTHORIZATION [dbo]
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'tSQLt.TestClass', @xp, 'SCHEMA', N'IcsApp-Tests', NULL, NULL, NULL, NULL
GO
