CREATE TABLE [psa].[ics_stg_M3V10vil_POL_MITMAS]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_vil_MITMAS_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_vil_MITMAS_IsIncomplete] DEFAULT ('N'),
[MMAAD0] [numeric] (1, 0) NULL,
[MMAAD1] [numeric] (1, 0) NULL,
[MMACHK] [numeric] (1, 0) NULL,
[MMACRF] [nchar] (8) NULL,
[MMACTI] [numeric] (1, 0) NULL,
[MMAEQY] [numeric] (15, 6) NULL,
[MMAES2] [numeric] (1, 0) NULL,
[MMAESC] [numeric] (1, 0) NULL,
[MMALUC] [numeric] (1, 0) NULL,
[MMALUN] [nchar] (3) NULL,
[MMAMOR] [numeric] (1, 0) NULL,
[MMAMPT] [numeric] (3, 0) NULL,
[MMARPA] [nchar] (10) NULL,
[MMARPR] [nchar] (10) NULL,
[MMARR1] [numeric] (1, 0) NULL,
[MMATMN] [numeric] (1, 0) NULL,
[MMATMO] [nchar] (10) NULL,
[MMATNR] [numeric] (17, 0) NULL,
[MMAUTC] [numeric] (1, 0) NULL,
[MMAWDY] [numeric] (5, 0) NULL,
[MMBACD] [numeric] (1, 0) NULL,
[MMBGRP] [nchar] (2) NULL,
[MMBOGR] [numeric] (1, 0) NULL,
[MMBPEY] [numeric] (1, 0) NULL,
[MMBUAR] [nchar] (3) NULL,
[MMBYPR] [numeric] (1, 0) NULL,
[MMCAWP] [numeric] (1, 0) NULL,
[MMCCO1] [numeric] (5, 3) NULL,
[MMCCO2] [numeric] (5, 3) NULL,
[MMCCO3] [numeric] (5, 3) NULL,
[MMCETY] [nchar] (2) NULL,
[MMCFI1] [nchar] (10) NULL,
[MMCFI2] [numeric] (15, 2) NULL,
[MMCFI3] [nchar] (3) NULL,
[MMCFI4] [nchar] (5) NULL,
[MMCFI5] [nchar] (1) NULL,
[MMCHCD] [numeric] (1, 0) NULL,
[MMCHCL] [numeric] (1, 0) NULL,
[MMCHID] [nchar] (10) NULL,
[MMCHNO] [numeric] (3, 0) NULL,
[MMCONC] [numeric] (1, 0) NULL,
[MMCONO] [numeric] (18, 0) NOT NULL,
[MMCPUN] [nchar] (3) NULL,
[MMCUCD] [nchar] (3) NULL,
[MMCUCS] [nchar] (3) NULL,
[MMCWUN] [nchar] (3) NULL,
[MMDCCD] [numeric] (1, 0) NULL,
[MMDIGI] [nchar] (2) NULL,
[MMDIM1] [nchar] (15) NULL,
[MMDIM2] [nchar] (15) NULL,
[MMDIM3] [nchar] (15) NULL,
[MMDIRR] [numeric] (15, 6) NULL,
[MMDOID] [nvarchar] (20) NULL,
[MMDPID] [numeric] (2, 0) NULL,
[MMDTID] [numeric] (13, 0) NULL,
[MMDWNO] [nvarchar] (20) NULL,
[MMECAC] [nchar] (2) NULL,
[MMECCC] [nchar] (4) NULL,
[MMECFL] [numeric] (1, 0) NULL,
[MMECMA] [numeric] (1, 0) NULL,
[MMECVE] [nchar] (4) NULL,
[MMEPCD] [numeric] (1, 0) NULL,
[MMETRF] [nchar] (3) NULL,
[MMEVGR] [nchar] (2) NULL,
[MMEXCA] [numeric] (1, 0) NULL,
[MMEXPD] [numeric] (1, 0) NULL,
[MMFCCM] [nchar] (2) NULL,
[MMFCU1] [numeric] (11, 3) NULL,
[MMFEBA] [numeric] (1, 0) NULL,
[MMFRAG] [numeric] (2, 0) NULL,
[MMFRE3] [nchar] (5) NULL,
[MMFRE4] [nchar] (5) NULL,
[MMFUDS] [nvarchar] (60) NULL,
[MMFUNC] [nchar] (15) NULL,
[MMGRMT] [nchar] (3) NULL,
[MMGRP1] [nchar] (15) NULL,
[MMGRP2] [nchar] (15) NULL,
[MMGRP3] [nchar] (15) NULL,
[MMGRP4] [nchar] (15) NULL,
[MMGRP5] [nchar] (15) NULL,
[MMGRTI] [nchar] (10) NULL,
[MMGRTS] [nchar] (5) NULL,
[MMGRWE] [numeric] (9, 3) NULL,
[MMHAC1] [nchar] (4) NULL,
[MMHAC2] [nchar] (4) NULL,
[MMHAC3] [nchar] (4) NULL,
[MMHAZI] [numeric] (1, 0) NULL,
[MMHDPR] [nchar] (15) NULL,
[MMHIE1] [nchar] (15) NULL,
[MMHIE2] [nchar] (15) NULL,
[MMHIE3] [nchar] (15) NULL,
[MMHIE4] [nchar] (15) NULL,
[MMHIE5] [nchar] (15) NULL,
[MMIACP] [numeric] (1, 0) NULL,
[MMIEAA] [numeric] (1, 0) NULL,
[MMINDI] [numeric] (1, 0) NULL,
[MMITCL] [nchar] (5) NULL,
[MMITDS] [nvarchar] (30) NULL,
[MMITGR] [nchar] (8) NULL,
[MMITNO] [nchar] (15) NOT NULL,
[MMITRC] [numeric] (1, 0) NULL,
[MMITRF] [nchar] (3) NULL,
[MMITTY] [nchar] (3) NULL,
[MMLAMA] [numeric] (5, 2) NULL,
[MMLEAI] [numeric] (3, 0) NULL,
[MMLMDT] [numeric] (8, 0) NULL,
[MMLMTS] [numeric] (18, 0) NULL,
[MMMABU] [numeric] (1, 0) NULL,
[MMMAPL] [nchar] (10) NULL,
[MMMAPN] [numeric] (1, 0) NULL,
[MMMBFR] [nchar] (6) NULL,
[MMMBSR] [nchar] (6) NULL,
[MMMBUR] [nchar] (6) NULL,
[MMMDIR] [nchar] (6) NULL,
[MMMES1] [nchar] (6) NULL,
[MMMES2] [nchar] (6) NULL,
[MMMES3] [nchar] (6) NULL,
[MMMES4] [nchar] (6) NULL,
[MMMPGM] [nvarchar] (20) NULL,
[MMMVA1] [numeric] (15, 6) NULL,
[MMMVA2] [numeric] (15, 6) NULL,
[MMMVA3] [numeric] (15, 6) NULL,
[MMMVA4] [numeric] (15, 6) NULL,
[MMNESA] [nchar] (3) NULL,
[MMNEWE] [numeric] (9, 3) NULL,
[MMNMIT] [nchar] (2) NULL,
[MMNPTO] [numeric] (3, 0) NULL,
[MMNSUF] [nvarchar] (20) NULL,
[MMORTY] [nchar] (3) NULL,
[MMOTDI] [numeric] (1, 0) NULL,
[MMPDCC] [numeric] (1, 0) NULL,
[MMPEQ1] [numeric] (5, 0) NULL,
[MMPEQ2] [numeric] (5, 0) NULL,
[MMPEQ3] [numeric] (5, 0) NULL,
[MMPEQ4] [numeric] (5, 0) NULL,
[MMPET1] [numeric] (1, 0) NULL,
[MMPET2] [numeric] (1, 0) NULL,
[MMPET3] [numeric] (1, 0) NULL,
[MMPET4] [numeric] (1, 0) NULL,
[MMPLCD] [nchar] (2) NULL,
[MMPLMZ] [numeric] (4, 0) NULL,
[MMPOCY] [numeric] (5, 2) NULL,
[MMPPDT] [numeric] (8, 0) NULL,
[MMPPUN] [nchar] (3) NULL,
[MMPRCM] [nchar] (6) NULL,
[MMPRGP] [nchar] (3) NULL,
[MMPRGR] [numeric] (1, 0) NULL,
[MMPROD] [nchar] (10) NULL,
[MMPRVG] [nchar] (2) NULL,
[MMPUCD] [numeric] (5, 0) NULL,
[MMPUPR] [numeric] (17, 6) NULL,
[MMPUUN] [nchar] (3) NULL,
[MMQACD] [numeric] (1, 0) NULL,
[MMRESP] [nchar] (10) NULL,
[MMRGDT] [numeric] (8, 0) NULL,
[MMRGTM] [numeric] (6, 0) NULL,
[MMRIDC] [numeric] (1, 0) NULL,
[MMRIDE] [nchar] (10) NULL,
[MMSACD] [numeric] (5, 0) NULL,
[MMSALE] [numeric] (1, 0) NULL,
[MMSAPR] [numeric] (17, 6) NULL,
[MMSCGR] [numeric] (3, 1) NULL,
[MMSEPR] [numeric] (17, 6) NULL,
[MMSMFI] [numeric] (1, 0) NULL,
[MMSPAC] [nchar] (6) NULL,
[MMSPDT] [numeric] (8, 0) NULL,
[MMSPE1] [nvarchar] (25) NULL,
[MMSPE2] [nvarchar] (25) NULL,
[MMSPE3] [nvarchar] (25) NULL,
[MMSPE4] [nvarchar] (25) NULL,
[MMSPE5] [nvarchar] (25) NULL,
[MMSPUC] [numeric] (1, 0) NULL,
[MMSPUN] [nchar] (3) NULL,
[MMSTAT] [nchar] (2) NULL,
[MMSTCD] [numeric] (1, 0) NULL,
[MMSTCN] [nchar] (2) NULL,
[MMSTCS] [numeric] (15, 2) NULL,
[MMSTNC] [nchar] (1) NULL,
[MMSTUN] [nchar] (3) NULL,
[MMSUNO] [nchar] (10) NULL,
[MMTANK] [numeric] (1, 0) NULL,
[MMTAXC] [nchar] (3) NULL,
[MMTBFR] [numeric] (15, 6) NULL,
[MMTBSR] [numeric] (15, 6) NULL,
[MMTBUR] [numeric] (15, 6) NULL,
[MMTECR] [nchar] (3) NULL,
[MMTOHI] [numeric] (1, 0) NULL,
[MMTORE] [numeric] (1, 0) NULL,
[MMTPCD] [numeric] (2, 0) NULL,
[MMTPLI] [nchar] (15) NULL,
[MMTRPA] [nchar] (6) NULL,
[MMTXID] [numeric] (13, 0) NULL,
[MMUNMS] [nchar] (3) NULL,
[MMUNNN] [numeric] (4, 0) NULL,
[MMUNPA] [nchar] (3) NULL,
[MMVOL3] [numeric] (9, 3) NULL,
[MMVTCP] [numeric] (2, 0) NULL,
[MMVTCS] [numeric] (2, 0) NULL,
[MMWADY] [numeric] (5, 0) NULL,
[MMWAL1] [numeric] (15, 6) NULL,
[MMWAL2] [numeric] (15, 6) NULL,
[MMWAL3] [numeric] (15, 6) NULL,
[MMWAL4] [numeric] (15, 6) NULL,
[MMWAPC] [numeric] (5, 2) NULL,
[MMWSCA] [nchar] (6) NULL
)
GO
ALTER TABLE [psa].[ics_stg_M3V10vil_POL_MITMAS] ADD CONSTRAINT [PK_psa_ics_stg_M3V10vil_POL_MITMAS] PRIMARY KEY CLUSTERED  ([MMCONO], [MMITNO])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mandatory reference to the database-specific unique identifier for the original source system of this data record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'DataSourceKey'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Batch Run Id context in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'EtlBatchRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for this record being added to this table.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'EtlCreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process first added this record to this table.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'EtlCreatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that last marked this record deleted/inactive on this table; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'EtlDeletedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last marked this record deleted/inactive on this table; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'EtlDeletedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The database-specific unique key of this record as identified within the ETL sub-system', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'EtlRecordId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the only or main table or object in the source system of record from which this row was extracted', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'EtlSourceTable'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Step Run Id context (within a Batch Run) in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'EtlStepRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Thread Run Id context (within a Step Run) in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'EtlThreadRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for the last update for this record on this table; will be the same as EtlCreatedBy when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'EtlUpdatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last updated this record on this table; will be the same as EtlCreatedOn when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'EtlUpdatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates that this record is marked as or has been physically deleted in the source system of record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'IsDeleted'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates whether ETL processing is complete.  Used on PSA staging tables to indicate that the row may have changes that need to be re-processed by the ETL process (regardless of current ETL Batch Run Id).  May be used for late arriving dimensions to force facts to be re-processed outside of their originating batch.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_MITMAS', 'COLUMN', N'IsIncomplete'
GO
