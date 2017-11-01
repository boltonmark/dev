CREATE TABLE [tsa].[ics_land_M3V10vil_POL_OINVOL]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_vil_OINVOL_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_vil_OINVOL_IsDuplicate] DEFAULT ((0)),
[ONBSCD] [nchar] (3) NULL,
[ONCHID] [nchar] (10) NULL,
[ONCHNO] [numeric] (3, 0) NULL,
[ONCONO] [numeric] (3, 0) NULL,
[ONCVT1] [numeric] (15, 2) NULL,
[ONCVT2] [numeric] (15, 2) NULL,
[ONDIVI] [nchar] (3) NULL,
[ONDLIX] [numeric] (11, 0) NULL,
[ONECAR] [nchar] (2) NULL,
[ONEXIN] [nchar] (14) NULL,
[ONFTCO] [nchar] (3) NULL,
[ONINPX] [nchar] (6) NULL,
[ONIVAM] [numeric] (15, 2) NULL,
[ONIVAV] [numeric] (15, 2) NULL,
[ONIVBA] [numeric] (15, 2) NULL,
[ONIVFR] [nvarchar] (30) NULL,
[ONIVLA] [numeric] (15, 2) NULL,
[ONIVNO] [numeric] (9, 0) NULL,
[ONIVRF] [nvarchar] (20) NULL,
[ONIVSQ] [numeric] (3, 0) NULL,
[ONIVTP] [nchar] (2) NULL,
[ONLMDT] [numeric] (8, 0) NULL,
[ONORNO] [nchar] (10) NULL,
[ONPYNO] [nchar] (10) NULL,
[ONRGDT] [numeric] (8, 0) NULL,
[ONRGTM] [numeric] (6, 0) NULL,
[ONVRIN] [nchar] (16) NULL,
[ONVRNO] [nchar] (16) NULL,
[ONVTAM] [numeric] (15, 2) NULL,
[ONVTCD] [numeric] (2, 0) NULL,
[ONVTP1] [numeric] (5, 2) NULL,
[ONVTP2] [numeric] (5, 2) NULL,
[ONWHLO] [nchar] (3) NULL,
[ONYEA4] [numeric] (4, 0) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10vil_POL_OINVOL_1] ON [tsa].[ics_land_M3V10vil_POL_OINVOL] ([ONCONO], [ONDIVI], [ONDLIX], [ONINPX], [ONIVNO], [ONIVRF], [ONIVTP], [ONORNO], [ONWHLO], [ONYEA4])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mandatory reference to the database-specific unique identifier for the original source system of this data record.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10vil_POL_OINVOL', 'COLUMN', N'DataSourceKey'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Batch Run Id context in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10vil_POL_OINVOL', 'COLUMN', N'EtlBatchRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for this record being added to this table.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10vil_POL_OINVOL', 'COLUMN', N'EtlCreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process first added this record to this table.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10vil_POL_OINVOL', 'COLUMN', N'EtlCreatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the only or main table or object in the source system of record from which this row was extracted', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10vil_POL_OINVOL', 'COLUMN', N'EtlSourceTable'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Step Run Id context (within a Batch Run) in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10vil_POL_OINVOL', 'COLUMN', N'EtlStepRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Thread Run Id context (within a Step Run) in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10vil_POL_OINVOL', 'COLUMN', N'EtlThreadRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used as part of ETL processing when merging from TSA to PSA.  Indicates that this row should not be merged to PSA for some reason - e.g. becuae it is a possible duplicate.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10vil_POL_OINVOL', 'COLUMN', N'ExcludeFromMerge'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used as part of ETL processing when merging from TSA to PSA. Indicates that this row is a suspected duplicate, one reason why a row might be excluded from the TSA-to-PSA merge.', 'SCHEMA', N'tsa', 'TABLE', N'ics_land_M3V10vil_POL_OINVOL', 'COLUMN', N'IsDuplicate'
GO
