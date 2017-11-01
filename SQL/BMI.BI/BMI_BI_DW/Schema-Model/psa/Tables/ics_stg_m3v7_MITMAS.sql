CREATE TABLE [psa].[ics_stg_m3v7_MITMAS]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_m3v7_MITMAS_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_m3v7_MITMAS_IsIncomplete] DEFAULT ('N'),
[MMCONO] [decimal] (18, 0) NOT NULL,
[MMSTAT] [nvarchar] (255) NULL,
[MMITNO] [nvarchar] (255) NOT NULL,
[MMITDS] [nvarchar] (255) NULL,
[MMFUDS] [nvarchar] (255) NULL,
[MMDWNO] [nvarchar] (255) NULL,
[MMRESP] [nvarchar] (255) NULL,
[MMDCCD] [decimal] (1, 0) NULL,
[MMUNMS] [nvarchar] (255) NULL,
[MMITGR] [nvarchar] (255) NULL,
[MMITCL] [nvarchar] (255) NULL,
[MMBUAR] [nvarchar] (255) NULL,
[MMEVGR] [nvarchar] (255) NULL,
[MMITTY] [nvarchar] (255) NULL,
[MMTPCD] [decimal] (2, 0) NULL,
[MMMABU] [decimal] (1, 0) NULL,
[MMCHCD] [decimal] (1, 0) NULL,
[MMSTCD] [decimal] (1, 0) NULL,
[MMBACD] [decimal] (1, 0) NULL,
[MMVOL3] [decimal] (9, 3) NULL,
[MMNEWE] [decimal] (9, 3) NULL,
[MMGRWE] [decimal] (9, 3) NULL,
[MMPPUN] [nvarchar] (255) NULL,
[MMBYPR] [decimal] (1, 0) NULL,
[MMWAPC] [decimal] (5, 2) NULL,
[MMQACD] [decimal] (1, 0) NULL,
[MMEPCD] [decimal] (1, 0) NULL,
[MMPOCY] [decimal] (5, 2) NULL,
[MMACTI] [decimal] (1, 0) NULL,
[MMHIE1] [nvarchar] (255) NULL,
[MMHIE2] [nvarchar] (255) NULL,
[MMHIE3] [nvarchar] (255) NULL,
[MMHIE4] [nvarchar] (255) NULL,
[MMHIE5] [nvarchar] (255) NULL,
[MMGRP1] [nvarchar] (255) NULL,
[MMGRP2] [nvarchar] (255) NULL,
[MMGRP3] [nvarchar] (255) NULL,
[MMGRP4] [nvarchar] (255) NULL,
[MMGRP5] [nvarchar] (255) NULL,
[MMCFI1] [nvarchar] (255) NULL,
[MMCFI2] [decimal] (15, 2) NULL,
[MMCFI3] [nvarchar] (255) NULL,
[MMCFI4] [nvarchar] (255) NULL,
[MMCFI5] [nvarchar] (255) NULL,
[MMECCC] [nvarchar] (255) NULL,
[MMTXID] [decimal] (13, 0) NULL,
[MMDTID] [decimal] (13, 0) NULL,
[MMECVE] [nvarchar] (255) NULL,
[MMECAC] [nvarchar] (255) NULL,
[MMECMA] [decimal] (1, 0) NULL,
[MMECFL] [decimal] (1, 0) NULL,
[MMWSCA] [nvarchar] (255) NULL,
[MMPRGP] [nvarchar] (255) NULL,
[MMETRF] [nvarchar] (255) NULL,
[MMACRF] [nvarchar] (255) NULL,
[MMINDI] [decimal] (1, 0) NULL,
[MMPUUN] [nvarchar] (255) NULL,
[MMAUTC] [decimal] (1, 0) NULL,
[MMALUC] [decimal] (1, 0) NULL,
[MMPDCC] [decimal] (1, 0) NULL,
[MMIEAA] [decimal] (1, 0) NULL,
[MMRIDE] [nvarchar] (255) NULL,
[MMRIDC] [decimal] (1, 0) NULL,
[MMGRTI] [nvarchar] (255) NULL,
[MMGRTS] [nvarchar] (255) NULL,
[MMEXPD] [decimal] (1, 0) NULL,
[MMITRF] [nvarchar] (255) NULL,
[MMPRCM] [nvarchar] (255) NULL,
[MMGRMT] [nvarchar] (255) NULL,
[MMHAZI] [decimal] (1, 0) NULL,
[MMSALE] [decimal] (1, 0) NULL,
[MMFRAG] [decimal] (2, 0) NULL,
[MMTAXC] [nvarchar] (255) NULL,
[MMATMO] [nvarchar] (255) NULL,
[MMATMN] [decimal] (1, 0) NULL,
[MMTPLI] [nvarchar] (255) NULL,
[MMFCU1] [decimal] (11, 3) NULL,
[MMSUNO] [nvarchar] (255) NULL,
[MMPUPR] [decimal] (17, 6) NULL,
[MMPUCD] [decimal] (5, 0) NULL,
[MMCUCD] [nvarchar] (255) NULL,
[MMPPDT] [decimal] (8, 0) NULL,
[MMSAPR] [decimal] (17, 6) NULL,
[MMSTUN] [nvarchar] (255) NULL,
[MMSACD] [decimal] (5, 0) NULL,
[MMCUCS] [nvarchar] (255) NULL,
[MMSPDT] [decimal] (8, 0) NULL,
[MMDIGI] [nvarchar] (255) NULL,
[MMBGRP] [nvarchar] (255) NULL,
[MMPRVG] [nvarchar] (255) NULL,
[MMFRE3] [nvarchar] (255) NULL,
[MMFRE4] [nvarchar] (255) NULL,
[MMOTDI] [decimal] (1, 0) NULL,
[MMBOGR] [decimal] (1, 0) NULL,
[MMPRGR] [decimal] (1, 0) NULL,
[MMLAMA] [decimal] (5, 2) NULL,
[MMACHK] [decimal] (1, 0) NULL,
[MMBPEY] [decimal] (1, 0) NULL,
[MMSPUN] [nvarchar] (255) NULL,
[MMSPUC] [decimal] (1, 0) NULL,
[MMALUN] [nvarchar] (255) NULL,
[MMUNNN] [decimal] (4, 0) NULL,
[MMUNPA] [nvarchar] (255) NULL,
[MMHAC1] [nvarchar] (255) NULL,
[MMHAC2] [nvarchar] (255) NULL,
[MMHAC3] [nvarchar] (255) NULL,
[MMDIM1] [nvarchar] (255) NULL,
[MMDIM2] [nvarchar] (255) NULL,
[MMDIM3] [nvarchar] (255) NULL,
[MMSPE1] [nvarchar] (255) NULL,
[MMSPE2] [nvarchar] (255) NULL,
[MMSPE3] [nvarchar] (255) NULL,
[MMSPE4] [nvarchar] (255) NULL,
[MMSPE5] [nvarchar] (255) NULL,
[MMCETY] [nvarchar] (255) NULL,
[MMSTCN] [nvarchar] (255) NULL,
[MMSPAC] [nvarchar] (255) NULL,
[MMTRPA] [nvarchar] (255) NULL,
[MMPROD] [nvarchar] (255) NULL,
[MMSMFI] [decimal] (1, 0) NULL,
[MMTANK] [decimal] (2, 0) NULL,
[MMARPA] [nvarchar] (255) NULL,
[MMARPR] [nvarchar] (255) NULL,
[MMAMPT] [decimal] (3, 0) NULL,
[MMAWDY] [decimal] (5, 0) NULL,
[MMNPTO] [decimal] (3, 0) NULL,
[MMMES1] [nvarchar] (255) NULL,
[MMMES2] [nvarchar] (255) NULL,
[MMMES3] [nvarchar] (255) NULL,
[MMMES4] [nvarchar] (255) NULL,
[MMMVA1] [decimal] (15, 6) NULL,
[MMMVA2] [decimal] (15, 6) NULL,
[MMMVA3] [decimal] (15, 6) NULL,
[MMMVA4] [decimal] (15, 6) NULL,
[MMPEQ1] [decimal] (5, 0) NULL,
[MMPEQ2] [decimal] (5, 0) NULL,
[MMPEQ3] [decimal] (5, 0) NULL,
[MMPEQ4] [decimal] (5, 0) NULL,
[MMPET1] [decimal] (1, 0) NULL,
[MMPET2] [decimal] (1, 0) NULL,
[MMPET3] [decimal] (1, 0) NULL,
[MMPET4] [decimal] (1, 0) NULL,
[MMMPGM] [nvarchar] (255) NULL,
[MMORTY] [nvarchar] (255) NULL,
[MMPLCD] [nvarchar] (255) NULL,
[MMMAPL] [nvarchar] (255) NULL,
[MMTOHI] [decimal] (1, 0) NULL,
[MMTORE] [decimal] (1, 0) NULL,
[MMFEBA] [decimal] (1, 0) NULL,
[MMMAPN] [decimal] (1, 0) NULL,
[MMDOID] [nvarchar] (255) NULL,
[MMSEPR] [decimal] (17, 6) NULL,
[MMSTCS] [decimal] (15, 2) NULL,
[MMNESA] [nvarchar] (255) NULL,
[MMNSUF] [nvarchar] (255) NULL,
[MMFCCM] [nvarchar] (255) NULL,
[MMDPID] [decimal] (2, 0) NULL,
[MMCONC] [decimal] (1, 0) NULL,
[MMPLMZ] [decimal] (4, 0) NULL,
[MMCCO1] [decimal] (5, 3) NULL,
[MMCCO2] [decimal] (5, 3) NULL,
[MMCCO3] [decimal] (5, 3) NULL,
[MMWADY] [decimal] (5, 0) NULL,
[MMTBSR] [decimal] (15, 6) NULL,
[MMMBSR] [nvarchar] (255) NULL,
[MMTBUR] [decimal] (15, 6) NULL,
[MMMBUR] [nvarchar] (255) NULL,
[MMTBFR] [decimal] (15, 6) NULL,
[MMMBFR] [nvarchar] (255) NULL,
[MMAESC] [decimal] (1, 0) NULL,
[MMAES2] [decimal] (1, 0) NULL,
[MMAMOR] [decimal] (1, 0) NULL,
[MMFUNC] [nvarchar] (255) NULL,
[MMSTNC] [nvarchar] (255) NULL,
[MMDIRR] [decimal] (15, 6) NULL,
[MMMDIR] [nvarchar] (255) NULL,
[MMSCGR] [decimal] (3, 1) NULL,
[MMARR1] [decimal] (1, 0) NULL,
[MMAEQY] [decimal] (15, 6) NULL,
[MMLEAI] [decimal] (3, 0) NULL,
[MMWAL1] [decimal] (15, 6) NULL,
[MMWAL2] [decimal] (15, 6) NULL,
[MMWAL3] [decimal] (15, 6) NULL,
[MMWAL4] [decimal] (15, 6) NULL,
[MMIACP] [decimal] (1, 0) NULL,
[MMHDPR] [nvarchar] (255) NULL,
[MMAAD0] [decimal] (1, 0) NULL,
[MMAAD1] [decimal] (1, 0) NULL,
[MMCHCL] [decimal] (1, 0) NULL,
[MMITRC] [decimal] (1, 0) NULL,
[MMVTCP] [decimal] (2, 0) NULL,
[MMVTCS] [decimal] (2, 0) NULL,
[MMRGDT] [decimal] (8, 0) NULL,
[MMRGTM] [decimal] (6, 0) NULL,
[MMLMDT] [decimal] (8, 0) NULL,
[MMCHNO] [decimal] (3, 0) NULL,
[MMCHID] [nvarchar] (255) NULL,
[MMLMTS] [decimal] (18, 0) NULL,
[MMATNR] [decimal] (17, 0) NULL,
[MMNMIT] [nvarchar] (255) NULL,
[MMTECR] [nvarchar] (255) NULL,
[MMEXCA] [decimal] (1, 0) NULL,
[MMCAWP] [decimal] (1, 0) NULL,
[MMCWUN] [nvarchar] (255) NULL,
[MMCPUN] [nvarchar] (255) NULL,
[MMILEN] [decimal] (5, 3) NULL,
[MMIWID] [decimal] (5, 3) NULL,
[MMIHEI] [decimal] (5, 3) NULL,
[MMRNRI] [decimal] (1, 0) NULL,
[MMSAFC] [nvarchar] (255) NULL,
[MMRMSG] [decimal] (1, 0) NULL,
[MMMOTP] [nvarchar] (255) NULL,
[MMACMC] [nvarchar] (255) NULL,
[MMACCG] [nvarchar] (255) NULL,
[MMCCI1] [nvarchar] (255) NULL,
[MMCCCM] [nvarchar] (255) NULL,
[MMCRI1] [nvarchar] (255) NULL,
[MMITRU] [decimal] (1, 0) NULL,
[MMHVMT] [decimal] (1, 0) NULL,
[MMITNE] [nvarchar] (255) NULL,
[MMCUEX] [nvarchar] (255) NULL,
[MMQMGP] [nvarchar] (255) NULL,
[MMSPGV] [decimal] (9, 6) NULL,
[MMRUID] [nvarchar] (255) NULL,
[MMSPIH] [decimal] (1, 0) NULL,
[MMQIRQ] [decimal] (1, 0) NULL,
[MMPDLN] [nvarchar] (255) NULL,
[MMCPGR] [nvarchar] (255) NULL
)
GO
ALTER TABLE [psa].[ics_stg_m3v7_MITMAS] ADD CONSTRAINT [PK_stg_m3v7_MITMAS] PRIMARY KEY CLUSTERED  ([MMCONO], [MMITNO])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mandatory reference to the database-specific unique identifier for the original source system of this data record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'DataSourceKey'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Batch Run Id context in which this record was added or last updated – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'EtlBatchRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for this record being added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'EtlCreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process first added this record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'EtlCreatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that last marked this record deleted/inactive; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'EtlDeletedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last marked this record deleted/inactive; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'EtlDeletedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The database-specific unique key of this record as identified within the ETL sub-system', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'EtlRecordId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the only or main table or object in the source system of record from where this row was extracted', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'EtlSourceTable'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Step Run Id context (within a Batch Run) in which this record was added or last updated – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'EtlStepRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Thread Run Id context (within a Step Run) in which this record was added or last updated – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'EtlThreadRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for the last update for this record; will be the same as EtlCreatedBy when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'EtlUpdatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last updated this record; will be the same as EtlCreatedOn when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'EtlUpdatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates that this record is marked as or has been physically deleted in the source system of record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'IsDeleted'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates whether ETL processing is complete.  Used on PSA staging tables to indicate that the row may have changes that need to be re-processed by the ETL process (regardless of current ETL Batch Run Id).  May be used for late arriving dimensions to force facts to be re-processed outside of their originating batch.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_MITMAS', 'COLUMN', N'IsIncomplete'
GO
