CREATE TABLE [psa].[ics_stg_m3_OSBSTD]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_m3_OSBSTD_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_m3_OSBSTD_IsIncomplete] DEFAULT ('N'),
[UCCONO] [decimal] (18, 0) NOT NULL,
[UCDIVI] [nvarchar] (255) NOT NULL,
[UCFACI] [nvarchar] (255) NULL,
[UCORNO] [nvarchar] (255) NOT NULL,
[UCDLIX] [decimal] (18, 0) NOT NULL,
[UCPONR] [decimal] (18, 0) NOT NULL,
[UCPOSX] [decimal] (3, 0) NULL,
[UCIVNO] [decimal] (9, 0) NULL,
[UCORDT] [decimal] (8, 0) NULL,
[UCDWDT] [decimal] (8, 0) NULL,
[UCCODT] [decimal] (8, 0) NULL,
[UCDLDT] [decimal] (8, 0) NULL,
[UCIVDT] [decimal] (8, 0) NULL,
[UCYEA4] [decimal] (4, 0) NULL,
[UCACDT] [decimal] (8, 0) NULL,
[UCCUNO] [nvarchar] (255) NULL,
[UCCUCL] [nvarchar] (255) NULL,
[UCCUTP] [decimal] (1, 0) NULL,
[UCCUST] [nvarchar] (255) NULL,
[UCORTP] [nvarchar] (255) NULL,
[UCAGNT] [nvarchar] (255) NULL,
[UCPYNO] [nvarchar] (255) NULL,
[UCCHL1] [nvarchar] (255) NULL,
[UCCHL2] [nvarchar] (255) NULL,
[UCCHL3] [nvarchar] (255) NULL,
[UCCHL4] [nvarchar] (255) NULL,
[UCCUCD] [nvarchar] (255) NULL,
[UCRAIN] [decimal] (11, 6) NULL,
[UCDMCU] [decimal] (1, 0) NULL,
[UCSMCD] [nvarchar] (255) NULL,
[UCSDST] [nvarchar] (255) NULL,
[UCCSCD] [nvarchar] (255) NULL,
[UCFRE1] [nvarchar] (255) NULL,
[UCFRE2] [nvarchar] (255) NULL,
[UCWCON] [nvarchar] (255) NULL,
[UCBPAT] [nvarchar] (255) NULL,
[UCWHLO] [nvarchar] (255) NOT NULL,
[UCITNO] [nvarchar] (255) NULL,
[UCITGR] [nvarchar] (255) NULL,
[UCITTY] [nvarchar] (255) NULL,
[UCITCL] [nvarchar] (255) NULL,
[UCSUNO] [nvarchar] (255) NULL,
[UCFRE3] [nvarchar] (255) NULL,
[UCFRE4] [nvarchar] (255) NULL,
[UCREPI] [nvarchar] (255) NULL,
[UCLTYP] [nvarchar] (255) NULL,
[UCMUFT] [decimal] (2, 0) NULL,
[UCSTUN] [nvarchar] (255) NULL,
[UCALUN] [nvarchar] (255) NULL,
[UCSPUN] [nvarchar] (255) NULL,
[UCPRMO] [nvarchar] (255) NULL,
[UCDISY] [nvarchar] (255) NULL,
[UCCMP1] [nvarchar] (255) NULL,
[UCCMP2] [nvarchar] (255) NULL,
[UCCMP3] [nvarchar] (255) NULL,
[UCCMP4] [nvarchar] (255) NULL,
[UCCMP5] [nvarchar] (255) NULL,
[UCCMP6] [nvarchar] (255) NULL,
[UCPRCH] [decimal] (1, 0) NULL,
[UCUCCD] [decimal] (1, 0) NULL,
[UCSMCC] [decimal] (1, 0) NULL,
[UCCMNO] [nvarchar] (255) NULL,
[UCVANO] [nvarchar] (255) NULL,
[UCCFIN] [decimal] (10, 0) NULL,
[UCORTK] [nvarchar] (255) NULL,
[UCADID] [nvarchar] (255) NULL,
[UCFECN] [nvarchar] (255) NULL,
[UCAGNO] [nvarchar] (255) NULL,
[UCDPNR] [nvarchar] (255) NULL,
[UCORIG] [decimal] (18, 0) NOT NULL,
[UCIDCD] [decimal] (1, 0) NULL,
[UCJOBN] [decimal] (3, 0) NULL,
[UCJBSX] [decimal] (2, 0) NULL,
[UCSETP] [nvarchar] (255) NULL,
[UCINNO] [nvarchar] (255) NULL,
[UCIITN] [nvarchar] (255) NULL,
[UCINGR] [nvarchar] (255) NULL,
[UCSRES] [nvarchar] (255) NULL,
[UCTECH] [nvarchar] (255) NULL,
[UCESCO] [nvarchar] (255) NULL,
[UCERCO] [nvarchar] (255) NULL,
[UCERCL] [nvarchar] (255) NULL,
[UCMECO] [nvarchar] (255) NULL,
[UCMECL] [nvarchar] (255) NULL,
[UCCTNO] [nvarchar] (255) NULL,
[UCAGTP] [nvarchar] (255) NULL,
[UCCONS] [nvarchar] (255) NULL,
[UCMINO] [nvarchar] (255) NULL,
[UCRSCD] [nvarchar] (255) NULL,
[UCPROJ] [nvarchar] (255) NULL,
[UCELNO] [nvarchar] (255) NULL,
[UCIVQT] [decimal] (15, 6) NULL,
[UCOFQS] [decimal] (15, 6) NULL,
[UCIVQA] [decimal] (15, 6) NULL,
[UCIVQS] [decimal] (15, 6) NULL,
[UCORQT] [decimal] (15, 6) NULL,
[UCORQS] [decimal] (15, 6) NULL,
[UCORQA] [decimal] (15, 6) NULL,
[UCORQB] [decimal] (15, 6) NULL,
[UCGRWE] [decimal] (9, 3) NULL,
[UCNEWE] [decimal] (9, 3) NULL,
[UCVOL3] [decimal] (9, 3) NULL,
[UCSAAM] [decimal] (15, 2) NULL,
[UCSGAM] [decimal] (15, 2) NULL,
[UCCUAM] [decimal] (15, 2) NULL,
[UCDIA1] [decimal] (15, 2) NULL,
[UCDIA2] [decimal] (15, 2) NULL,
[UCDIA3] [decimal] (15, 2) NULL,
[UCDIA4] [decimal] (15, 2) NULL,
[UCDIA5] [decimal] (15, 2) NULL,
[UCDIA6] [decimal] (15, 2) NULL,
[UCOFRA] [decimal] (15, 2) NULL,
[UCUCOS] [decimal] (17, 6) NULL,
[UCDCOS] [decimal] (17, 6) NULL,
[UCMFAM] [decimal] (17, 6) NULL,
[UCONK1] [decimal] (15, 2) NULL,
[UCONK2] [decimal] (15, 2) NULL,
[UCONK3] [decimal] (15, 2) NULL,
[UCONK4] [decimal] (15, 2) NULL,
[UCONK5] [decimal] (15, 2) NULL,
[UCALBO] [decimal] (15, 2) NULL,
[UCDDF1] [decimal] (3, 0) NULL,
[UCDDF2] [decimal] (3, 0) NULL,
[UCDDF3] [decimal] (3, 0) NULL,
[UCDDF4] [decimal] (3, 0) NULL,
[UCDDF5] [decimal] (3, 0) NULL,
[UCTDEL] [decimal] (1, 0) NULL,
[UCTORL] [decimal] (1, 0) NULL,
[UCFULL] [decimal] (1, 0) NULL,
[UCRQTY] [decimal] (1, 0) NULL,
[UCRTME] [decimal] (1, 0) NULL,
[UCLOWM] [decimal] (1, 0) NULL,
[UCMPRO] [decimal] (1, 0) NULL,
[UCBAOL] [decimal] (1, 0) NULL,
[UCBGOL] [decimal] (1, 0) NULL,
[UCCAOL] [decimal] (1, 0) NULL,
[UCCGOL] [decimal] (1, 0) NULL,
[UCINRC] [nvarchar] (255) NULL,
[UCIITG] [nvarchar] (255) NULL,
[UCFCTN] [nvarchar] (255) NULL,
[UCASST] [nvarchar] (255) NULL,
[UCHDPR] [nvarchar] (255) NULL,
[UCSDEP] [nvarchar] (255) NULL,
[UCBUAR] [nvarchar] (255) NULL,
[UCSTRT] [nvarchar] (255) NULL,
[UCSUFI] [nvarchar] (255) NULL,
[UCROUT] [nvarchar] (255) NULL,
[UCRODN] [decimal] (3, 0) NULL,
[UCDEMA] [decimal] (15, 6) NULL,
[UCATV1] [nvarchar] (255) NULL,
[UCATV2] [nvarchar] (255) NULL,
[UCATV3] [nvarchar] (255) NULL,
[UCATV4] [nvarchar] (255) NULL,
[UCATV5] [nvarchar] (255) NULL,
[UCAAV1] [decimal] (15, 6) NULL,
[UCAAV2] [decimal] (15, 6) NULL,
[UCAAV3] [decimal] (15, 6) NULL,
[UCAAV4] [decimal] (15, 6) NULL,
[UCAAV5] [decimal] (15, 6) NULL,
[UCATMO] [nvarchar] (255) NULL,
[UCMTCO] [nvarchar] (255) NULL,
[UCMTX1] [nvarchar] (255) NULL,
[UCMTX2] [nvarchar] (255) NULL,
[UCCINF] [nvarchar] (255) NULL,
[UCCSHC] [nvarchar] (255) NULL,
[UCAOTP] [nvarchar] (255) NULL,
[UCASCL] [nvarchar] (255) NULL,
[UCASCA] [decimal] (2, 0) NULL,
[UCRSDJ] [decimal] (8, 0) NULL,
[UCRFDJ] [decimal] (8, 0) NULL,
[UCSCOD] [decimal] (1, 0) NULL,
[UCPRRF] [nvarchar] (255) NULL,
[UCINTY] [decimal] (1, 0) NULL,
[UCCUOW] [nvarchar] (255) NULL,
[UCBRAN] [nvarchar] (255) NULL,
[UCCFE1] [nvarchar] (255) NULL,
[UCCFE2] [decimal] (15, 2) NULL,
[UCCFE3] [nvarchar] (255) NULL,
[UCCFE4] [nvarchar] (255) NULL,
[UCCFE5] [nvarchar] (255) NULL,
[UCCFE6] [nvarchar] (255) NULL,
[UCCFE7] [decimal] (15, 2) NULL,
[UCCFE8] [nvarchar] (255) NULL,
[UCCFE9] [nvarchar] (255) NULL,
[UCDLNI] [decimal] (1, 0) NULL,
[UCRGDT] [decimal] (8, 0) NULL,
[UCRGTM] [decimal] (6, 0) NULL,
[UCLMDT] [decimal] (8, 0) NULL,
[UCCHNO] [decimal] (3, 0) NULL,
[UCCHID] [nvarchar] (255) NULL,
[UCPRHL] [nvarchar] (255) NULL,
[UCSERN] [nvarchar] (255) NULL,
[UCAPBA] [decimal] (1, 0) NULL,
[UCCFGL] [nvarchar] (255) NULL,
[UCWATP] [nvarchar] (255) NULL,
[UCGWTP] [nvarchar] (255) NULL,
[UCPRHW] [nvarchar] (255) NULL,
[UCSERW] [nvarchar] (255) NULL,
[UCINPX] [nvarchar] (255) NULL,
[UCEXIN] [nvarchar] (255) NULL,
[UCDMA2] [decimal] (15, 6) NULL,
[UCCAWE] [decimal] (15, 6) NULL,
[UCTECN] [nvarchar] (255) NULL,
[UCINAP] [nvarchar] (255) NULL,
[UCLMTS] [decimal] (18, 0) NULL,
[UCSMC0] [nvarchar] (255) NULL,
[UCSMC1] [nvarchar] (255) NULL,
[UCSMC2] [nvarchar] (255) NULL,
[UCSMC3] [nvarchar] (255) NULL,
[UCSMC4] [nvarchar] (255) NULL,
[UCSMC5] [nvarchar] (255) NULL,
[UCSMC6] [nvarchar] (255) NULL,
[UCSMC7] [nvarchar] (255) NULL,
[UCSMC8] [nvarchar] (255) NULL,
[UCSMC9] [nvarchar] (255) NULL,
[UCPIDE] [nvarchar] (255) NULL,
[UCPCLA] [decimal] (17, 6) NULL,
[UCACOS] [decimal] (17, 6) NULL,
[UCBOP1] [decimal] (1, 0) NULL,
[UCTEPY] [nvarchar] (255) NULL,
[UCRSC1] [nvarchar] (255) NULL,
[UCDECU] [nvarchar] (255) NULL,
[UCDPCL] [decimal] (17, 6) NULL,
[UCENNO] [nvarchar] (255) NULL,
[UCLNCL] [decimal] (1, 0) NULL,
[UCAPRM] [nvarchar] (255) NULL,
[UCRQWH] [nvarchar] (255) NULL,
[UCRAGN] [nvarchar] (255) NULL,
[UCCLAT] [nvarchar] (255) NULL
)
GO
ALTER TABLE [psa].[ics_stg_m3_OSBSTD] ADD CONSTRAINT [PK_stg_m3_OSBSTD] PRIMARY KEY CLUSTERED  ([UCCONO], [UCDIVI], [UCDLIX], [UCORIG], [UCORNO], [UCPONR], [UCWHLO])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mandatory reference to the database-specific unique identifier for the original source system of this data record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'DataSourceKey'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Batch Run Id context in which this record was added or last updated – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'EtlBatchRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for this record being added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'EtlCreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process first added this record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'EtlCreatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that last marked this record deleted/inactive; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'EtlDeletedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last marked this record deleted/inactive; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'EtlDeletedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The database-specific unique key of this record as identified within the ETL sub-system', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'EtlRecordId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the only or main table or object in the source system of record from where this row was extracted', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'EtlSourceTable'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Step Run Id context (within a Batch Run) in which this record was added or last updated – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'EtlStepRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Thread Run Id context (within a Step Run) in which this record was added or last updated – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'EtlThreadRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for the last update for this record; will be the same as EtlCreatedBy when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'EtlUpdatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last updated this record; will be the same as EtlCreatedOn when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'EtlUpdatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates that this record is marked as or has been physically deleted in the source system of record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'IsDeleted'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates whether ETL processing is complete.  Used on PSA staging tables to indicate that the row may have changes that need to be re-processed by the ETL process (regardless of current ETL Batch Run Id).  May be used for late arriving dimensions to force facts to be re-processed outside of their originating batch.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_OSBSTD', 'COLUMN', N'IsIncomplete'
GO
