--!
--! Azure AD Admins.BMI_BI_DW_PROD.sql
--!

--!
--! MAKE SURE WE ARE ON THE RIGHT INSTANCE AND IN THE RIGHT DATABASE
--!
set noexec off
go
if cast(serverproperty('ServerName') as nvarchar(255)) <> 'bmidwhprod' or db_name() <> 'BMI_BI_DW_PROD'
	begin
		raiserror('Failed to run users script due incorrect Azure SQL Server instance or database', 16, 1) ;
		set noexec on ;
	end
go

/*
select * from sys.sysusers;
select * from sys.sql_logins;
select * from sys.database_principals;
*/

--if not exists (select 1 from sys.sysusers where name = 'greg.lucas@icopal.com')
--	begin
--		create user [greg.lucas@icopal.com] from external provider;
--	end
--go
--exec sp_addrolemember N'db_accessadmin', N'greg.lucas@icopal.com' ;
--go
--exec sp_addrolemember N'db_owner', N'greg.lucas@icopal.com' ;
--go
--grant alter any user to [greg.lucas@icopal.com]
--go

if not exists (select 1 from sys.sysusers where name = 'andrew.couch@icopal.com')
	begin
		create user [andrew.couch@icopal.com] from external provider;
	end
go
exec sp_addrolemember N'db_accessadmin', N'andrew.couch@icopal.com' ;
go
exec sp_addrolemember N'db_owner', N'andrew.couch@icopal.com' ;
go
grant alter any user to [andrew.couch@icopal.com]
go

if not exists (select 1 from sys.sysusers where name = 'razia.nazir@icopal.com')
	begin
		create user [razia.nazir@icopal.com] from external provider;
	end
go
exec sp_addrolemember N'db_accessadmin', N'razia.nazir@icopal.com' ;
go
exec sp_addrolemember N'db_owner', N'razia.nazir@icopal.com' ;
go
grant alter any user to [razia.nazir@icopal.com]
go
