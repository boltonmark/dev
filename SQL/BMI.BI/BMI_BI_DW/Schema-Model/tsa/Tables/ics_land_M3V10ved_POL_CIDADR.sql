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
