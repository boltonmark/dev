CREATE TABLE [tsa].[ics_land_M3V10ved_POL_OSBSTD]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_land_ved_OSBSTD_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_land_ved_OSBSTD_IsDuplicate] DEFAULT ((0)),
[UCAAV1] [numeric] (15, 6) NULL,
[UCAAV2] [numeric] (15, 6) NULL,
[UCAAV3] [numeric] (15, 6) NULL,
[UCAAV4] [numeric] (15, 6) NULL,
[UCAAV5] [numeric] (15, 6) NULL,
[UCACDT] [numeric] (8, 0) NULL,
[UCADID] [nchar] (6) NULL,
[UCAGNO] [nchar] (7) NULL,
[UCAGNT] [nchar] (10) NULL,
[UCAGTP] [nchar] (3) NULL,
[UCALBO] [numeric] (15, 2) NULL,
[UCALUN] [nchar] (3) NULL,
[UCAOTP] [nchar] (3) NULL,
[UCAPBA] [numeric] (1, 0) NULL,
[UCASCA] [numeric] (2, 0) NULL,
[UCASCL] [nchar] (1) NULL,
[UCASST] [nchar] (2) NULL,
[UCATMO] [nchar] (10) NULL,
[UCATV1] [nchar] (15) NULL,
[UCATV2] [nchar] (15) NULL,
[UCATV3] [nchar] (15) NULL,
[UCATV4] [nchar] (15) NULL,
[UCATV5] [nchar] (15) NULL,
[UCBAOL] [numeric] (1, 0) NULL,
[UCBGOL] [numeric] (1, 0) NULL,
[UCBPAT] [nchar] (6) NULL,
[UCBRAN] [nchar] (8) NULL,
[UCBUAR] [nchar] (3) NULL,
[UCCAOL] [numeric] (1, 0) NULL,
[UCCAWE] [numeric] (15, 6) NULL,
[UCCFE1] [nchar] (10) NULL,
[UCCFE2] [numeric] (15, 2) NULL,
[UCCFE3] [nchar] (3) NULL,
[UCCFE4] [nchar] (5) NULL,
[UCCFE5] [nchar] (1) NULL,
[UCCFE6] [nchar] (10) NULL,
[UCCFE7] [numeric] (15, 2) NULL,
[UCCFE8] [nchar] (3) NULL,
[UCCFE9] [nchar] (5) NULL,
[UCCFGL] [nchar] (15) NULL,
[UCCFIN] [numeric] (10, 0) NULL,
[UCCGOL] [numeric] (1, 0) NULL,
[UCCHID] [nchar] (10) NULL,
[UCCHL1] [nchar] (10) NULL,
[UCCHL2] [nchar] (10) NULL,
[UCCHL3] [nchar] (10) NULL,
[UCCHL4] [nchar] (10) NULL,
[UCCHNO] [numeric] (3, 0) NULL,
[UCCINF] [nchar] (15) NULL,
[UCCMNO] [nchar] (4) NULL,
[UCCMP1] [nchar] (4) NULL,
[UCCMP2] [nchar] (4) NULL,
[UCCMP3] [nchar] (4) NULL,
[UCCMP4] [nchar] (4) NULL,
[UCCMP5] [nchar] (4) NULL,
[UCCMP6] [nchar] (4) NULL,
[UCCODT] [numeric] (8, 0) NULL,
[UCCONO] [numeric] (3, 0) NULL,
[UCCONS] [nchar] (15) NULL,
[UCCSCD] [nchar] (3) NULL,
[UCCSHC] [nchar] (10) NULL,
[UCCTNO] [nchar] (10) NULL,
[UCCUAM] [numeric] (15, 2) NULL,
[UCCUCD] [nchar] (3) NULL,
[UCCUCL] [nchar] (3) NULL,
[UCCUNO] [nchar] (10) NULL,
[UCCUOW] [nchar] (10) NULL,
[UCCUST] [nchar] (10) NULL,
[UCCUTP] [numeric] (1, 0) NULL,
[UCDCOS] [numeric] (17, 6) NULL,
[UCDDF1] [numeric] (3, 0) NULL,
[UCDDF2] [numeric] (3, 0) NULL,
[UCDDF3] [numeric] (3, 0) NULL,
[UCDDF4] [numeric] (3, 0) NULL,
[UCDDF5] [numeric] (3, 0) NULL,
[UCDEMA] [numeric] (15, 6) NULL,
[UCDIA1] [numeric] (15, 2) NULL,
[UCDIA2] [numeric] (15, 2) NULL,
[UCDIA3] [numeric] (15, 2) NULL,
[UCDIA4] [numeric] (15, 2) NULL,
[UCDIA5] [numeric] (15, 2) NULL,
[UCDIA6] [numeric] (15, 2) NULL,
[UCDISY] [nchar] (10) NULL,
[UCDIVI] [nchar] (3) NULL,
[UCDLDT] [numeric] (8, 0) NULL,
[UCDLIX] [numeric] (11, 0) NULL,
[UCDLNI] [numeric] (1, 0) NULL,
[UCDMA2] [numeric] (15, 6) NULL,
[UCDMCU] [numeric] (1, 0) NULL,
[UCDPNR] [nvarchar] (17) NULL,
[UCDWDT] [numeric] (8, 0) NULL,
[UCELNO] [nchar] (8) NULL,
[UCERCL] [nchar] (5) NULL,
[UCERCO] [nchar] (5) NULL,
[UCESCO] [nchar] (5) NULL,
[UCEXIN] [nchar] (14) NULL,
[UCFACI] [nchar] (3) NULL,
[UCFCTN] [nchar] (4) NULL,
[UCFECN] [nchar] (10) NULL,
[UCFRE1] [nchar] (5) NULL,
[UCFRE2] [nchar] (5) NULL,
[UCFRE3] [nchar] (5) NULL,
[UCFRE4] [nchar] (5) NULL,
[UCFULL] [numeric] (1, 0) NULL,
[UCGRWE] [numeric] (9, 3) NULL,
[UCGWTP] [nchar] (10) NULL,
[UCHDPR] [nchar] (15) NULL,
[UCIDCD] [numeric] (1, 0) NULL,
[UCIITG] [nchar] (8) NULL,
[UCIITN] [nchar] (15) NULL,
[UCINAP] [nchar] (15) NULL,
[UCINGR] [nchar] (10) NULL,
[UCINNO] [nchar] (15) NULL,
[UCINPX] [nchar] (6) NULL,
[UCINRC] [nchar] (10) NULL,
[UCINTY] [numeric] (1, 0) NULL,
[UCITCL] [nchar] (5) NULL,
[UCITGR] [nchar] (8) NULL,
[UCITNO] [nchar] (15) NULL,
[UCITTY] [nchar] (3) NULL,
[UCIVDT] [numeric] (8, 0) NULL,
[UCIVNO] [numeric] (9, 0) NULL,
[UCIVQA] [numeric] (15, 6) NULL,
[UCIVQS] [numeric] (15, 6) NULL,
[UCIVQT] [numeric] (15, 6) NULL,
[UCJBSX] [numeric] (2, 0) NULL,
[UCJOBN] [numeric] (3, 0) NULL,
[UCLMDT] [numeric] (8, 0) NULL,
[UCLMTS] [numeric] (18, 0) NULL,
[UCLOWM] [numeric] (1, 0) NULL,
[UCLTYP] [nchar] (1) NULL,
[UCMECL] [nchar] (5) NULL,
[UCMECO] [nchar] (5) NULL,
[UCMFAM] [numeric] (17, 6) NULL,
[UCMINO] [nchar] (15) NULL,
[UCMPRO] [numeric] (1, 0) NULL,
[UCMTCO] [nchar] (5) NULL,
[UCMTX1] [nvarchar] (60) NULL,
[UCMTX2] [nvarchar] (60) NULL,
[UCMUFT] [numeric] (2, 0) NULL,
[UCNEWE] [numeric] (9, 3) NULL,
[UCOFQS] [numeric] (15, 6) NULL,
[UCOFRA] [numeric] (15, 2) NULL,
[UCONK1] [numeric] (15, 2) NULL,
[UCONK2] [numeric] (15, 2) NULL,
[UCONK3] [numeric] (15, 2) NULL,
[UCONK4] [numeric] (15, 2) NULL,
[UCONK5] [numeric] (15, 2) NULL,
[UCORDT] [numeric] (8, 0) NULL,
[UCORIG] [numeric] (1, 0) NULL,
[UCORNO] [nchar] (10) NULL,
[UCORQA] [numeric] (15, 6) NULL,
[UCORQB] [numeric] (15, 6) NULL,
[UCORQS] [numeric] (15, 6) NULL,
[UCORQT] [numeric] (15, 6) NULL,
[UCORTK] [nchar] (1) NULL,
[UCORTP] [nchar] (3) NULL,
[UCPONR] [numeric] (5, 0) NULL,
[UCPOSX] [numeric] (2, 0) NULL,
[UCPRCH] [numeric] (1, 0) NULL,
[UCPRHL] [nchar] (15) NULL,
[UCPRHW] [nchar] (15) NULL,
[UCPRMO] [nchar] (1) NULL,
[UCPROJ] [nchar] (7) NULL,
[UCPRRF] [nchar] (2) NULL,
[UCPYNO] [nchar] (10) NULL,
[UCRAIN] [numeric] (11, 6) NULL,
[UCREPI] [nchar] (15) NULL,
[UCRFDJ] [numeric] (8, 0) NULL,
[UCRGDT] [numeric] (8, 0) NULL,
[UCRGTM] [numeric] (6, 0) NULL,
[UCRODN] [numeric] (3, 0) NULL,
[UCROUT] [nchar] (6) NULL,
[UCRQTY] [numeric] (1, 0) NULL,
[UCRSCD] [nchar] (3) NULL,
[UCRSDJ] [numeric] (8, 0) NULL,
[UCRTME] [numeric] (1, 0) NULL,
[UCSAAM] [numeric] (15, 2) NULL,
[UCSCOD] [numeric] (1, 0) NULL,
[UCSDEP] [nchar] (10) NULL,
[UCSDST] [nchar] (3) NULL,
[UCSERN] [nvarchar] (20) NULL,
[UCSERW] [nvarchar] (20) NULL,
[UCSETP] [nchar] (3) NULL,
[UCSGAM] [numeric] (15, 2) NULL,
[UCSMC0] [nchar] (15) NULL,
[UCSMC1] [nchar] (15) NULL,
[UCSMC2] [nchar] (15) NULL,
[UCSMC3] [nchar] (15) NULL,
[UCSMC4] [nchar] (15) NULL,
[UCSMC5] [nchar] (15) NULL,
[UCSMC6] [nchar] (15) NULL,
[UCSMC7] [nchar] (15) NULL,
[UCSMC8] [nchar] (15) NULL,
[UCSMC9] [nchar] (15) NULL,
[UCSMCC] [numeric] (1, 0) NULL,
[UCSMCD] [nchar] (4) NULL,
[UCSPUN] [nchar] (3) NULL,
[UCSRES] [nchar] (4) NULL,
[UCSTRT] [nchar] (3) NULL,
[UCSTUN] [nchar] (3) NULL,
[UCSUFI] [nvarchar] (20) NULL,
[UCSUNO] [nchar] (10) NULL,
[UCTDEL] [numeric] (1, 0) NULL,
[UCTECH] [nchar] (4) NULL,
[UCTECN] [nvarchar] (20) NULL,
[UCTORL] [numeric] (1, 0) NULL,
[UCUCCD] [numeric] (1, 0) NULL,
[UCUCOS] [numeric] (17, 6) NULL,
[UCVANO] [nchar] (15) NULL,
[UCVOL3] [numeric] (9, 3) NULL,
[UCWATP] [nchar] (10) NULL,
[UCWCON] [nchar] (3) NULL,
[UCWHLO] [nchar] (3) NULL,
[UCYEA4] [numeric] (4, 0) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10ved_POL_OSBSTD_1] ON [tsa].[ics_land_M3V10ved_POL_OSBSTD] ([UCCONO], [UCDIVI], [UCDLIX], [UCORIG], [UCORNO], [UCPONR], [UCPOSX], [UCWHLO])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mandatory reference to the database-specific unique identifier for the original source system of this data record.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_OSBSTD', 'COLUMN', N'DataSourceKey'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Batch Run Id context in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_OSBSTD', 'COLUMN', N'EtlBatchRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for this record being added to this table.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_OSBSTD', 'COLUMN', N'EtlCreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process first added this record to this table.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_OSBSTD', 'COLUMN', N'EtlCreatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the only or main table or object in the source system of record from which this row was extracted', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_OSBSTD', 'COLUMN', N'EtlSourceTable'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Step Run Id context (within a Batch Run) in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_OSBSTD', 'COLUMN', N'EtlStepRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Thread Run Id context (within a Step Run) in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_OSBSTD', 'COLUMN', N'EtlThreadRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used as part of ETL processing when merging from TSA to PSA.  Indicates that this row should not be merged to PSA for some reason - e.g. becuae it is a possible duplicate.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_OSBSTD', 'COLUMN', N'ExcludeFromMerge'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used as part of ETL processing when merging from TSA to PSA. Indicates that this row is a suspected duplicate, one reason why a row might be excluded from the TSA-to-PSA merge.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_OSBSTD', 'COLUMN', N'IsDuplicate'
GO
