CREATE TABLE [tsa].[ics_land_M3V10ved_POL_CIDADR]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_land_ved_CIDADR_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_land_ved_CIDADR_IsDuplicate] DEFAULT ((0)),
[SAADID] [nchar] (6) NULL,
[SAADR1] [nvarchar] (36) NULL,
[SAADR2] [nvarchar] (36) NULL,
[SAADR3] [nvarchar] (36) NULL,
[SAADR4] [nvarchar] (36) NULL,
[SAADTE] [numeric] (2, 0) NULL,
[SAADVI] [nchar] (6) NULL,
[SACHID] [nchar] (10) NULL,
[SACHNO] [numeric] (3, 0) NULL,
[SACONO] [numeric] (3, 0) NULL,
[SACSCD] [nchar] (3) NULL,
[SAECAR] [nchar] (2) NULL,
[SAEDES] [nchar] (10) NULL,
[SAGEOC] [numeric] (9, 0) NULL,
[SAGEOX] [numeric] (15, 6) NULL,
[SAGEOY] [numeric] (15, 6) NULL,
[SAGEOZ] [numeric] (15, 6) NULL,
[SALMDT] [numeric] (8, 0) NULL,
[SALMTS] [numeric] (18, 0) NULL,
[SAPNOD] [nchar] (15) NULL,
[SAPONO] [nchar] (10) NULL,
[SAPRIA] [numeric] (1, 0) NULL,
[SARGDT] [numeric] (8, 0) NULL,
[SARGTM] [numeric] (6, 0) NULL,
[SASTDT] [numeric] (8, 0) NULL,
[SASUNM] [nvarchar] (36) NULL,
[SASUNO] [nchar] (10) NULL,
[SATAXC] [nchar] (3) NULL,
[SATOWN] [nvarchar] (20) NULL,
[SATXID] [numeric] (13, 0) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10ved_POL_CIDADR_1] ON [tsa].[ics_land_M3V10ved_POL_CIDADR] ([SAADID], [SAADTE], [SACONO], [SASTDT], [SASUNO])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mandatory reference to the database-specific unique identifier for the original source system of this data record.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_CIDADR', 'COLUMN', N'DataSourceKey'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Batch Run Id context in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_CIDADR', 'COLUMN', N'EtlBatchRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for this record being added to this table.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_CIDADR', 'COLUMN', N'EtlCreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process first added this record to this table.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_CIDADR', 'COLUMN', N'EtlCreatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the only or main table or object in the source system of record from which this row was extracted', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_CIDADR', 'COLUMN', N'EtlSourceTable'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Step Run Id context (within a Batch Run) in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_CIDADR', 'COLUMN', N'EtlStepRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Thread Run Id context (within a Step Run) in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_CIDADR', 'COLUMN', N'EtlThreadRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used as part of ETL processing when merging from TSA to PSA.  Indicates that this row should not be merged to PSA for some reason - e.g. becuae it is a possible duplicate.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_CIDADR', 'COLUMN', N'ExcludeFromMerge'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used as part of ETL processing when merging from TSA to PSA. Indicates that this row is a suspected duplicate, one reason why a row might be excluded from the TSA-to-PSA merge.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10ved_POL_CIDADR', 'COLUMN', N'IsDuplicate'
GO
