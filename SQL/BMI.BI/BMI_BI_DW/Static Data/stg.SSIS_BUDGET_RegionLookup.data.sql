﻿--MERGE generated by 'sp_generate_merge' stored procedure, Version 0.93
--Originally by Vyas (http://vyaskn.tripod.com): sp_generate_inserts (build 22)
--Adapted for SQL Server 2008/2012 by Daniel Nolan (http://danere.com)

set nocount on

merge into [stg].[SSIS_BUDGET_RegionLookup] as Target
using (values
  ('DIV_TOT','Icopal/GAF','Icopal/GAF Europe division')
 ,('ELIM','ELIM Icopal/GAF','ELIM Icopal/GAF Europe division')
 ,('REC','Central','Region Central (REC)')
 ,('REE','East','Region East (REE)')
 ,('REN','North','Region North (REN)')
 ,('REW','West','Region West (REW)')
 ,('RPM','Plastic and Metal','Region Plastic and Metal (RPM)')
) as Source ([RegionCode],[RegionName],[RegionLookup])
on (Target.[RegionCode] = Source.[RegionCode])
when matched and (
	nullif(Source.[RegionName], Target.[RegionName]) is not null or nullif(Target.[RegionName], Source.[RegionName]) is not null or 
	nullif(Source.[RegionLookup], Target.[RegionLookup]) is not null or nullif(Target.[RegionLookup], Source.[RegionLookup]) is not null) then
 update set
  [RegionName] = Source.[RegionName], 
  [RegionLookup] = Source.[RegionLookup]
when not matched by target then
 insert([RegionCode],[RegionName],[RegionLookup])
 values(Source.[RegionCode],Source.[RegionName],Source.[RegionLookup])
when not matched by source then 
 delete
;
go
declare @mergeError int
 , @mergeCount int
select @mergeError = @@error, @mergeCount = @@rowcount
if @mergeError != 0
 begin
 print 'ERROR OCCURRED IN MERGE FOR [stg].[SSIS_BUDGET_RegionLookup]. Rows affected: ' + cast(@mergeCount as varchar(100)); -- SQL should always return zero rows affected
 end
else
 begin
 print '[stg].[SSIS_BUDGET_RegionLookup] rows affected by MERGE: ' + cast(@mergeCount as varchar(100));
 end
go

set nocount off
go

