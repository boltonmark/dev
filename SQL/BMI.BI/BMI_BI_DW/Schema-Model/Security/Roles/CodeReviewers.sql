CREATE ROLE [CodeReviewers]
AUTHORIZATION [dbo]
GO
EXEC sp_addrolemember N'CodeReviewers', N'EtlDevelopersDEV'
GO
