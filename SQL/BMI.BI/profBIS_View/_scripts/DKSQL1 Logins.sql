﻿--!
--! DKSQL1 Logins.sql
--!
set noexec off;
go
use [master]
go
if not exists (select 1 from sys.server_principals where [name] = 'BmiBiEtlExtractor' and [type] = 'S')
	create login [BmiBiEtlExtractor] with password = 'VbnFghRty$56'
		, check_expiration = off
		, check_policy = off
		, default_language = British
		, default_database = [profBIS_View];
else
	alter login [BmiBiEtlExtractor]
		with password = 'VbnFghRty$56'
			, check_expiration = off
			, check_policy = off
			, default_language = British
			, default_database = [profBIS_View] ;
go


if not exists (select 1 from sys.[server_principals] where [name] = 'GROUPICOPAL\ukglu' and [type] = 'U')
	create login [GROUPICOPAL\ukglu] from windows with default_language = British, default_database = [profBIS_View];
else
	alter login [GROUPICOPAL\ukglu] with default_language = British, default_database = [profBIS_View];
go
if not exists (select 1 from sys.[server_principals] where [name] = 'GROUPICOPAL\ukvmi' and [type] = 'U')
	create login [GROUPICOPAL\ukvmi] from windows with default_language = British, default_database = [profBIS_View];
else
	alter login [GROUPICOPAL\ukvmi] with default_language = British, default_database = [profBIS_View];
go
if not exists (select 1 from sys.[server_principals] where [name] = 'GROUPICOPAL\ukjcz' and [type] = 'U')
	create login [GROUPICOPAL\ukjcz] from windows with default_language = British, default_database = [profBIS_View];
else
	alter login [GROUPICOPAL\ukjcz] with default_language = British, default_database = [profBIS_View];
go
if not exists (select 1 from sys.[server_principals] where [name] = 'GROUPICOPAL\ukjbo' and [type] = 'U')
	create login [GROUPICOPAL\ukjbo] from windows with default_language = British, default_database = [profBIS_View];
else
	alter login [GROUPICOPAL\ukjbo] with default_language = British, default_database = [profBIS_View];
go
