CREATE TABLE [psa].[ics_stg_M3V10vil_POL_MPOPLA]
(
[EtlRecordId] [bigint] NOT NULL IDENTITY(1, 1),
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[EtlUpdatedOn] [datetime] NOT NULL,
[EtlUpdatedBy] [varchar] (200) NOT NULL,
[EtlDeletedOn] [datetime] NULL,
[EtlDeletedBy] [varchar] (200) NULL,
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_vil_MPOPLA_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_vil_MPOPLA_IsIncomplete] DEFAULT ('N'),
[POACRF] [nchar] (8) NULL,
[POACTP] [nchar] (2) NULL,
[POADID] [nchar] (6) NULL,
[POADVI] [nchar] (6) NULL,
[POAECN] [nchar] (7) NULL,
[POALQT] [numeric] (15, 6) NULL,
[POAPRB] [nchar] (10) NULL,
[POATNR] [numeric] (17, 0) NULL,
[POAURE] [nchar] (10) NULL,
[POBANO] [nvarchar] (20) NULL,
[POBIRT] [numeric] (10, 0) NULL,
[POBLTA] [numeric] (1, 0) NULL,
[POBUYE] [nchar] (10) NULL,
[POCFGH] [nchar] (15) NULL,
[POCFGL] [nchar] (15) NULL,
[POCFI1] [nchar] (10) NULL,
[POCFI2] [numeric] (15, 2) NULL,
[POCFI3] [nchar] (3) NULL,
[POCFI4] [nchar] (5) NULL,
[POCFI5] [nchar] (1) NULL,
[POCHID] [nchar] (10) NULL,
[POCHNO] [numeric] (3, 0) NULL,
[POCMCO] [nchar] (2) NULL,
[POCOCE] [nchar] (8) NULL,
[POCONO] [numeric] (18, 0) NOT NULL,
[POCUCD] [nchar] (3) NULL,
[PODEID] [numeric] (7, 0) NULL,
[PODILE] [numeric] (15, 6) NULL,
[PODLDT] [numeric] (8, 0) NULL,
[POECVE] [nchar] (4) NULL,
[POELNO] [nchar] (8) NULL,
[POETD1] [numeric] (8, 0) NULL,
[POETD2] [numeric] (8, 0) NULL,
[POETRF] [nchar] (3) NULL,
[POEXNO] [nchar] (7) NULL,
[POFACI] [nchar] (3) NULL,
[POFUDT] [numeric] (8, 0) NULL,
[POFUSC] [nchar] (3) NULL,
[POGETY] [nchar] (2) NULL,
[POGRMT] [nchar] (3) NULL,
[POHOMA] [numeric] (1, 0) NULL,
[POITNO] [nchar] (15) NULL,
[POLDIS] [numeric] (15, 6) NULL,
[POLEDN] [numeric] (2, 0) NULL,
[POLEDT] [numeric] (8, 0) NULL,
[POLMDT] [numeric] (8, 0) NULL,
[POLMTS] [numeric] (18, 0) NULL,
[POMEDC] [nchar] (10) NULL,
[POMES1] [nchar] (6) NULL,
[POMES2] [nchar] (6) NULL,
[POMES3] [nchar] (6) NULL,
[POMES4] [nchar] (6) NULL,
[POMETE] [numeric] (1, 0) NULL,
[POMODL] [nchar] (3) NULL,
[POMPRN] [nchar] (15) NULL,
[POMSG1] [nchar] (2) NULL,
[POMSG2] [nchar] (2) NULL,
[POMSG3] [nchar] (2) NULL,
[POMSG4] [nchar] (2) NULL,
[POMSTR] [nchar] (3) NULL,
[POMSUF] [nvarchar] (20) NULL,
[POMVA1] [numeric] (15, 6) NULL,
[POMVA2] [numeric] (15, 6) NULL,
[POMVA3] [numeric] (15, 6) NULL,
[POMVA4] [numeric] (15, 6) NULL,
[POMVB1] [numeric] (15, 6) NULL,
[POMVB2] [numeric] (15, 6) NULL,
[POMVB3] [numeric] (15, 6) NULL,
[POMVB4] [numeric] (15, 6) NULL,
[POMVS1] [numeric] (15, 6) NULL,
[POMVS2] [numeric] (15, 6) NULL,
[PONHAI] [nchar] (15) NULL,
[PONHSN] [nvarchar] (20) NULL,
[PONOED] [numeric] (1, 0) NULL,
[PONSUN] [nchar] (10) NULL,
[PONUAU] [numeric] (5, 0) NULL,
[PONUM2] [numeric] (3, 0) NULL,
[POODI1] [numeric] (5, 2) NULL,
[POODI2] [numeric] (5, 2) NULL,
[POODI3] [numeric] (5, 2) NULL,
[POOFID] [nchar] (10) NULL,
[POOPED] [numeric] (8, 0) NULL,
[POORQT] [numeric] (15, 6) NULL,
[POORTY] [nchar] (3) NULL,
[POOSHV] [nchar] (10) NULL,
[POOURR] [nchar] (10) NULL,
[POOURT] [nchar] (1) NULL,
[POPACT] [nchar] (6) NULL,
[POPITD] [nvarchar] (30) NULL,
[POPITT] [nvarchar] (60) NULL,
[POPLDT] [numeric] (8, 0) NULL,
[POPLP2] [numeric] (18, 0) NOT NULL,
[POPLPN] [numeric] (18, 0) NOT NULL,
[POPLPS] [numeric] (18, 0) NOT NULL,
[POPNLI] [numeric] (18, 0) NOT NULL,
[POPNLS] [numeric] (18, 0) NOT NULL,
[POPOTC] [nchar] (2) NULL,
[POPPQT] [numeric] (15, 6) NULL,
[POPPSQ] [nchar] (2) NULL,
[POPPUN] [nchar] (3) NULL,
[POPRCS] [nchar] (3) NULL,
[POPRIF] [numeric] (3, 0) NULL,
[POPRIP] [nchar] (1) NULL,
[POPRNS] [nchar] (15) NULL,
[POPROD] [nchar] (10) NULL,
[POPROJ] [nchar] (7) NULL,
[POPSDT] [numeric] (8, 0) NULL,
[POPSTS] [nchar] (2) NULL,
[POPTCD] [numeric] (1, 0) NULL,
[POPTXT] [nvarchar] (60) NULL,
[POPUCD] [numeric] (5, 0) NULL,
[POPUNO] [nchar] (7) NOT NULL,
[POPUPR] [numeric] (17, 6) NULL,
[POPURC] [nchar] (10) NULL,
[POPUSL] [nchar] (2) NULL,
[POPUUN] [nchar] (3) NULL,
[PORELD] [numeric] (8, 0) NULL,
[POREPP] [numeric] (1, 0) NULL,
[POREQT] [numeric] (15, 6) NULL,
[PORESP] [nchar] (10) NULL,
[PORFID] [nchar] (10) NULL,
[PORGDT] [numeric] (8, 0) NULL,
[PORGTM] [numeric] (6, 0) NULL,
[PORORC] [numeric] (1, 0) NULL,
[PORORL] [numeric] (6, 0) NULL,
[PORORN] [nchar] (10) NULL,
[PORORX] [numeric] (3, 0) NULL,
[PORPLD] [numeric] (8, 0) NULL,
[PORPLQ] [numeric] (15, 6) NULL,
[PORSCD] [nchar] (3) NULL,
[POSCHD] [numeric] (1, 0) NULL,
[POSITE] [nvarchar] (30) NULL,
[POSLTP] [nchar] (2) NULL,
[POSTQT] [numeric] (15, 6) NULL,
[POSTRT] [nchar] (3) NULL,
[POSUFI] [nvarchar] (20) NULL,
[POSUNO] [nchar] (10) NULL,
[POSUPR] [numeric] (15, 2) NULL,
[POSVDT] [numeric] (8, 0) NULL,
[POSVTS] [numeric] (6, 0) NULL,
[POTEDL] [nchar] (3) NULL,
[POTEOR] [numeric] (1, 0) NULL,
[POTEPY] [nchar] (3) NULL,
[POTFNO] [nchar] (16) NULL,
[POTIHM] [numeric] (4, 0) NULL,
[POTPCD] [numeric] (2, 0) NULL,
[POTXID] [numeric] (13, 0) NULL,
[POUPAV] [numeric] (1, 0) NULL,
[POWHLO] [nchar] (3) NULL,
[POYRE1] [nvarchar] (36) NULL,
[POZSET] [numeric] (1, 0) NULL
)
GO
ALTER TABLE [psa].[ics_stg_M3V10vil_POL_MPOPLA] ADD CONSTRAINT [PK_psa_ics_stg_M3V10vil_POL_MPOPLA] PRIMARY KEY CLUSTERED  ([POCONO], [POPLP2], [POPLPN], [POPLPS], [POPNLI], [POPNLS], [POPUNO])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mandatory reference to the database-specific unique identifier for the original source system of this data record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'DataSourceKey'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Batch Run Id context in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'EtlBatchRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for this record being added to this table.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'EtlCreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process first added this record to this table.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'EtlCreatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that last marked this record deleted/inactive on this table; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'EtlDeletedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last marked this record deleted/inactive on this table; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'EtlDeletedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The database-specific unique key of this record as identified within the ETL sub-system', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'EtlRecordId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the only or main table or object in the source system of record from which this row was extracted', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'EtlSourceTable'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Step Run Id context (within a Batch Run) in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'EtlStepRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Thread Run Id context (within a Step Run) in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'EtlThreadRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for the last update for this record on this table; will be the same as EtlCreatedBy when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'EtlUpdatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last updated this record on this table; will be the same as EtlCreatedOn when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'EtlUpdatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates that this record is marked as or has been physically deleted in the source system of record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'IsDeleted'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates whether ETL processing is complete.  Used on PSA staging tables to indicate that the row may have changes that need to be re-processed by the ETL process (regardless of current ETL Batch Run Id).  May be used for late arriving dimensions to force facts to be re-processed outside of their originating batch.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MPOPLA', 'COLUMN', N'IsIncomplete'
GO
