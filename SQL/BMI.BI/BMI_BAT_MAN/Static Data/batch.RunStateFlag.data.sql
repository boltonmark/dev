﻿--MERGE generated by 'sp_generate_merge' stored procedure, Version 0.93
--Originally by Vyas (http://vyaskn.tripod.com): sp_generate_inserts (build 22)
--Adapted for SQL Server 2008/2012 by Daniel Nolan (http://danere.com)

set nocount on

merge into [batch].[RunStateFlag] as Target
using (values
  (0,'Not Applicable')
 ,(1,'Started')
 ,(2,'In-Progress')
 ,(4,'Succeeded')
 ,(8,'Stopped')
 ,(16,'Failed')
 ,(32,'Skipped')
) as Source ([FlagBit],[FlagName])
on (Target.[FlagBit] = Source.[FlagBit])
when matched and (
	nullif(Source.[FlagName], Target.[FlagName]) is not null or nullif(Target.[FlagName], Source.[FlagName]) is not null) then
 update set
  [FlagName] = Source.[FlagName]
when not matched by target then
 insert([FlagBit],[FlagName])
 values(Source.[FlagBit],Source.[FlagName])
when not matched by source then 
 delete
;
go
declare @mergeError int
 , @mergeCount int
select @mergeError = @@error, @mergeCount = @@rowcount
if @mergeError != 0
 begin
 print 'ERROR OCCURRED IN MERGE FOR [batch].[RunStateFlag]. Rows affected: ' + cast(@mergeCount as varchar(100)); -- SQL should always return zero rows affected
 end
else
 begin
 print '[batch].[RunStateFlag] rows affected by MERGE: ' + cast(@mergeCount as varchar(100));
 end
go

set nocount off
go
