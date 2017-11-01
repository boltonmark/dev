CREATE TABLE [psa].[ics_stg_movex_OCUSMA]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_movex_OCUSMA_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_movex_OCUSMA_IsIncomplete] DEFAULT ('N'),
[OKCONO] [decimal] (18, 0) NOT NULL,
[OKDIVI] [nvarchar] (255) NULL,
[OKSTAT] [nvarchar] (255) NULL,
[OKCUNO] [nvarchar] (255) NOT NULL,
[OKCUCL] [nvarchar] (255) NULL,
[OKCUTP] [decimal] (1, 0) NULL,
[OKALCU] [nvarchar] (255) NULL,
[OKCUNM] [nvarchar] (255) NULL,
[OKCUA1] [nvarchar] (255) NULL,
[OKCUA2] [nvarchar] (255) NULL,
[OKCUA3] [nvarchar] (255) NULL,
[OKCUA4] [nvarchar] (255) NULL,
[OKADID] [nvarchar] (255) NULL,
[OKADBO] [decimal] (1, 0) NULL,
[OKPHNO] [nvarchar] (255) NULL,
[OKPHN2] [nvarchar] (255) NULL,
[OKTFNO] [nvarchar] (255) NULL,
[OKCORG] [nvarchar] (255) NULL,
[OKCOR2] [nvarchar] (255) NULL,
[OKYREF] [nvarchar] (255) NULL,
[OKYRE2] [nvarchar] (255) NULL,
[OKOREF] [nvarchar] (255) NULL,
[OKCUSU] [nvarchar] (255) NULL,
[OKEXCD] [nvarchar] (255) NULL,
[OKTEPY] [nvarchar] (255) NULL,
[OKOT75] [decimal] (1, 0) NULL,
[OKTECD] [nvarchar] (255) NULL,
[OKTEDL] [nvarchar] (255) NULL,
[OKMODL] [nvarchar] (255) NULL,
[OKSMCD] [nvarchar] (255) NULL,
[OKRESP] [nvarchar] (255) NULL,
[OKRONO] [nvarchar] (255) NULL,
[OKDIPC] [decimal] (5, 2) NULL,
[OKDISY] [nvarchar] (255) NULL,
[OKDIGC] [nvarchar] (255) NULL,
[OKVTCD] [decimal] (2, 0) NULL,
[OKTXAP] [decimal] (1, 0) NULL,
[OKCUCD] [nvarchar] (255) NULL,
[OKCRTP] [decimal] (2, 0) NULL,
[OKPLTB] [nvarchar] (255) NULL,
[OKPRVG] [nvarchar] (255) NULL,
[OKBREC] [nvarchar] (255) NULL,
[OKDTFM] [nvarchar] (255) NULL,
[OKEDIT] [nvarchar] (255) NULL,
[OKORTP] [nvarchar] (255) NULL,
[OKWHLO] [nvarchar] (255) NULL,
[OKPRIC] [decimal] (1, 0) NULL,
[OKSDST] [nvarchar] (255) NULL,
[OKCSCD] [nvarchar] (255) NULL,
[OKAGNT] [nvarchar] (255) NULL,
[OKAGN2] [nvarchar] (255) NULL,
[OKAGN3] [nvarchar] (255) NULL,
[OKAGN4] [nvarchar] (255) NULL,
[OKAGN5] [nvarchar] (255) NULL,
[OKAGN6] [nvarchar] (255) NULL,
[OKAGN7] [nvarchar] (255) NULL,
[OKINSU] [nvarchar] (255) NULL,
[OKPYNO] [nvarchar] (255) NULL,
[OKCUST] [nvarchar] (255) NULL,
[OKTEPA] [nvarchar] (255) NULL,
[OKLHCD] [nvarchar] (255) NULL,
[OKCRLM] [decimal] (15, 2) NULL,
[OKCRL2] [decimal] (15, 2) NULL,
[OKCRL3] [decimal] (15, 2) NULL,
[OKBLCD] [decimal] (1, 0) NULL,
[OKPRIO] [decimal] (1, 0) NULL,
[OKTBLG] [decimal] (15, 2) NULL,
[OKTOIN] [decimal] (15, 2) NULL,
[OKTDIN] [decimal] (15, 2) NULL,
[OKLIDT] [decimal] (8, 0) NULL,
[OKININ] [decimal] (3, 0) NULL,
[OKACRF] [nvarchar] (255) NULL,
[OKAICD] [decimal] (1, 0) NULL,
[OKBOCD] [decimal] (1, 0) NULL,
[OKFRE1] [nvarchar] (255) NULL,
[OKFRE2] [nvarchar] (255) NULL,
[OKBGRP] [nvarchar] (255) NULL,
[OKDOGR] [nvarchar] (255) NULL,
[OKBLII] [decimal] (1, 0) NULL,
[OKIICT] [nvarchar] (255) NULL,
[OKCLCD] [decimal] (1, 0) NULL,
[OKBLPR] [decimal] (1, 0) NULL,
[OKRMCT] [nvarchar] (255) NULL,
[OKBLAC] [decimal] (1, 0) NULL,
[OKADCA] [nvarchar] (255) NULL,
[OKPYDI] [nvarchar] (255) NULL,
[OKPONO] [nvarchar] (255) NULL,
[OKAUGI] [decimal] (1, 0) NULL,
[OKAGPA] [decimal] (1, 0) NULL,
[OKCCUS] [nvarchar] (255) NULL,
[OKWAYB] [decimal] (1, 0) NULL,
[OKADTG] [decimal] (1, 0) NULL,
[OKODTG] [decimal] (1, 0) NULL,
[OKMAIL] [decimal] (1, 0) NULL,
[OKENHD] [decimal] (1, 0) NULL,
[OKEURI] [decimal] (1, 0) NULL,
[OKEDIP] [decimal] (1, 0) NULL,
[OKCFC1] [nvarchar] (255) NULL,
[OKCFC2] [decimal] (15, 2) NULL,
[OKCFC3] [nvarchar] (255) NULL,
[OKCFC4] [nvarchar] (255) NULL,
[OKCFC5] [nvarchar] (255) NULL,
[OKCFC6] [nvarchar] (255) NULL,
[OKCFC7] [decimal] (15, 2) NULL,
[OKCFC8] [nvarchar] (255) NULL,
[OKCFC9] [nvarchar] (255) NULL,
[OKCFC0] [nvarchar] (255) NULL,
[OKLSID] [nvarchar] (255) NULL,
[OKLSAD] [nvarchar] (255) NULL,
[OKMEAL] [nvarchar] (255) NULL,
[OKVRNO] [nvarchar] (255) NULL,
[OKAGCH] [decimal] (1, 0) NULL,
[OKAGCT] [decimal] (1, 0) NULL,
[OKDUCD] [decimal] (1, 0) NULL,
[OKUSR1] [nvarchar] (255) NULL,
[OKUSR2] [nvarchar] (255) NULL,
[OKUSR3] [nvarchar] (255) NULL,
[OKDTE1] [decimal] (8, 0) NULL,
[OKDTE2] [decimal] (8, 0) NULL,
[OKDTE3] [decimal] (8, 0) NULL,
[OKCDRC] [nvarchar] (255) NULL,
[OKINCO] [nvarchar] (255) NULL,
[OKINSN] [nvarchar] (255) NULL,
[OKCUIC] [nvarchar] (255) NULL,
[OKINSS] [decimal] (1, 0) NULL,
[OKNALI] [decimal] (15, 2) NULL,
[OKDTL1] [decimal] (8, 0) NULL,
[OKUSL1] [nvarchar] (255) NULL,
[OKINLI] [decimal] (15, 2) NULL,
[OKDTL2] [decimal] (8, 0) NULL,
[OKUSL2] [nvarchar] (255) NULL,
[OKVRCD] [nvarchar] (255) NULL,
[OKEDES] [nvarchar] (255) NULL,
[OKROUT] [nvarchar] (255) NULL,
[OKRODN] [decimal] (3, 0) NULL,
[OKULZO] [nvarchar] (255) NULL,
[OKECLC] [nvarchar] (255) NULL,
[OKECF1] [nvarchar] (255) NULL,
[OKECF2] [nvarchar] (255) NULL,
[OKECF3] [nvarchar] (255) NULL,
[OKECF4] [nvarchar] (255) NULL,
[OKECF5] [nvarchar] (255) NULL,
[OKPYCD] [nvarchar] (255) NULL,
[OKGRPY] [decimal] (1, 0) NULL,
[OKTXID] [decimal] (13, 0) NULL,
[OKSERC] [decimal] (2, 0) NULL,
[OKSRES] [nvarchar] (255) NULL,
[OKTECH] [nvarchar] (255) NULL,
[OKTRTI] [decimal] (7, 2) NULL,
[OKLZON] [decimal] (2, 0) NULL,
[OKDIST] [decimal] (5, 0) NULL,
[OKTVCD] [nvarchar] (255) NULL,
[OKSOTP] [nvarchar] (255) NULL,
[OKMTIC] [decimal] (1, 0) NULL,
[OKPWMT] [nvarchar] (255) NULL,
[OKBPCD] [decimal] (1, 0) NULL,
[OKBPEX] [decimal] (1, 0) NULL,
[OKACHK] [decimal] (1, 0) NULL,
[OKTINC] [decimal] (1, 0) NULL,
[OKBUSE] [decimal] (1, 0) NULL,
[OKTCEX] [decimal] (1, 0) NULL,
[OKPYOP] [decimal] (1, 0) NULL,
[OKALWT] [decimal] (2, 0) NULL,
[OKPOPN] [nvarchar] (255) NULL,
[OKSOOP] [decimal] (1, 0) NULL,
[OKPRS1] [nvarchar] (255) NULL,
[OKPRS2] [nvarchar] (255) NULL,
[OKPRS3] [nvarchar] (255) NULL,
[OKPRS4] [nvarchar] (255) NULL,
[OKPRS5] [nvarchar] (255) NULL,
[OKDMSO] [nvarchar] (255) NULL,
[OKLSOI] [decimal] (8, 0) NULL,
[OKODUD] [decimal] (3, 0) NULL,
[OKODUE] [decimal] (3, 0) NULL,
[OKEALO] [decimal] (13, 0) NULL,
[OKECAR] [nvarchar] (255) NULL,
[OKGEOC] [decimal] (9, 0) NULL,
[OKTECN] [nvarchar] (255) NULL,
[OKTEEC] [decimal] (8, 0) NULL,
[OKAGPY] [nvarchar] (255) NULL,
[OKAGCP] [nvarchar] (255) NULL,
[OKAGAC] [nvarchar] (255) NULL,
[OKAGBP] [nvarchar] (255) NULL,
[OKACLB] [nvarchar] (255) NULL,
[OKAACB] [nvarchar] (255) NULL,
[OKAGPN] [nvarchar] (255) NULL,
[OKAGBG] [decimal] (10, 0) NULL,
[OKAGPG] [decimal] (10, 0) NULL,
[OKAGCA] [decimal] (1, 0) NULL,
[OKAGTD] [decimal] (8, 0) NULL,
[OKAGTN] [decimal] (10, 0) NULL,
[OKINRC] [nvarchar] (255) NULL,
[OKCESA] [nvarchar] (255) NULL,
[OKCHSY] [nvarchar] (255) NULL,
[OKTAXC] [nvarchar] (255) NULL,
[OKHAFE] [nvarchar] (255) NULL,
[OKOT89] [decimal] (1, 0) NULL,
[OKPRDL] [decimal] (1, 0) NULL,
[OKMCON] [decimal] (1, 0) NULL,
[OKRAN1] [decimal] (2, 0) NULL,
[OKRAN2] [decimal] (2, 0) NULL,
[OKRAN3] [decimal] (2, 0) NULL,
[OKRAN4] [decimal] (2, 0) NULL,
[OKQUCK] [decimal] (1, 0) NULL,
[OKIVGP] [nvarchar] (255) NULL,
[OKACEI] [decimal] (1, 0) NULL,
[OKVDLA] [decimal] (1, 0) NULL,
[OKFACI] [nvarchar] (255) NULL,
[OKDTID] [decimal] (13, 0) NULL,
[OKDESV] [nvarchar] (255) NULL,
[OKCHCL] [decimal] (1, 0) NULL,
[OKMCOS] [decimal] (1, 0) NULL,
[OKSPLM] [nvarchar] (255) NULL,
[OKEXPT] [decimal] (1, 0) NULL,
[OKATPR] [nvarchar] (255) NULL,
[OKACGR] [nvarchar] (255) NULL,
[OKSTMS] [decimal] (1, 0) NULL,
[OKSTMR] [nvarchar] (255) NULL,
[OKBCKO] [decimal] (1, 0) NULL,
[OKPADL] [decimal] (1, 0) NULL,
[OKTOWN] [nvarchar] (255) NULL,
[OKADVI] [nvarchar] (255) NULL,
[OKESAL] [decimal] (1, 0) NULL,
[OKRGDT] [decimal] (8, 0) NULL,
[OKRGTM] [decimal] (6, 0) NULL,
[OKLMDT] [decimal] (8, 0) NULL,
[OKCHNO] [decimal] (3, 0) NULL,
[OKCHID] [nvarchar] (255) NULL,
[OKLMTS] [decimal] (18, 0) NULL,
[OKSCED] [decimal] (1, 0) NULL,
[OKOT86] [decimal] (1, 0) NULL,
[OKBOP1] [decimal] (1, 0) NULL,
[OKRPLT] [nvarchar] (255) NULL,
[OKRDIS] [nvarchar] (255) NULL,
[OKRPYN] [nvarchar] (255) NULL,
[OKRTEP] [nvarchar] (255) NULL,
[OKRSMC] [nvarchar] (255) NULL,
[OKTRSU] [nvarchar] (255) NULL,
[OKAOTP] [nvarchar] (255) NULL,
[OKCUEX] [nvarchar] (255) NULL,
[OKFRCO] [nvarchar] (255) NULL,
[OKSPLE] [nvarchar] (255) NULL,
[OKRASN] [nvarchar] (255) NULL
)
GO
ALTER TABLE [psa].[ics_stg_movex_OCUSMA] ADD CONSTRAINT [PK_stg_movex_OCUSMA] PRIMARY KEY CLUSTERED  ([OKCONO], [OKCUNO])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mandatory reference to the database-specific unique identifier for the original source system of this data record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'DataSourceKey'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Batch Run Id context in which this record was added or last updated – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'EtlBatchRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for this record being added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'EtlCreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process first added this record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'EtlCreatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that last marked this record deleted/inactive; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'EtlDeletedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last marked this record deleted/inactive; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'EtlDeletedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The database-specific unique key of this record as identified within the ETL sub-system', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'EtlRecordId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the only or main table or object in the source system of record from where this row was extracted', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'EtlSourceTable'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Step Run Id context (within a Batch Run) in which this record was added or last updated – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'EtlStepRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Thread Run Id context (within a Step Run) in which this record was added or last updated – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'EtlThreadRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for the last update for this record; will be the same as EtlCreatedBy when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'EtlUpdatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last updated this record; will be the same as EtlCreatedOn when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'EtlUpdatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates that this record is marked as or has been physically deleted in the source system of record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'IsDeleted'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates whether ETL processing is complete.  Used on PSA staging tables to indicate that the row may have changes that need to be re-processed by the ETL process (regardless of current ETL Batch Run Id).  May be used for late arriving dimensions to force facts to be re-processed outside of their originating batch.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_movex_OCUSMA', 'COLUMN', N'IsIncomplete'
GO
