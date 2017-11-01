CREATE TABLE [psa].[ics_stg_M3V10ved_POL_OINVOL]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ved_OINVOL_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ved_OINVOL_IsIncomplete] DEFAULT ('N'),
[ONBSCD] [nchar] (3) NULL,
[ONCHID] [nchar] (10) NULL,
[ONCHNO] [numeric] (3, 0) NULL,
[ONCONO] [numeric] (18, 0) NOT NULL,
[ONCVT1] [numeric] (15, 2) NULL,
[ONCVT2] [numeric] (15, 2) NULL,
[ONDIVI] [nchar] (3) NOT NULL,
[ONDLIX] [numeric] (18, 0) NOT NULL,
[ONECAR] [nchar] (2) NULL,
[ONEXIN] [nchar] (14) NULL,
[ONFTCO] [nchar] (3) NULL,
[ONINPX] [nchar] (6) NOT NULL,
[ONIVAM] [numeric] (15, 2) NULL,
[ONIVAV] [numeric] (15, 2) NULL,
[ONIVBA] [numeric] (15, 2) NULL,
[ONIVFR] [nvarchar] (30) NULL,
[ONIVLA] [numeric] (15, 2) NULL,
[ONIVNO] [numeric] (18, 0) NOT NULL,
[ONIVRF] [nvarchar] (20) NOT NULL,
[ONIVSQ] [numeric] (3, 0) NULL,
[ONIVTP] [nchar] (2) NOT NULL,
[ONLMDT] [numeric] (8, 0) NULL,
[ONORNO] [nchar] (10) NOT NULL,
[ONPYNO] [nchar] (10) NULL,
[ONRGDT] [numeric] (8, 0) NULL,
[ONRGTM] [numeric] (6, 0) NULL,
[ONVRIN] [nchar] (16) NULL,
[ONVRNO] [nchar] (16) NULL,
[ONVTAM] [numeric] (15, 2) NULL,
[ONVTCD] [numeric] (2, 0) NULL,
[ONVTP1] [numeric] (5, 2) NULL,
[ONVTP2] [numeric] (5, 2) NULL,
[ONWHLO] [nchar] (3) NOT NULL,
[ONYEA4] [numeric] (18, 0) NOT NULL
)
GO
ALTER TABLE [psa].[ics_stg_M3V10ved_POL_OINVOL] ADD CONSTRAINT [PK_psa_ics_stg_M3V10ved_POL_OINVOL] PRIMARY KEY CLUSTERED  ([ONCONO], [ONDIVI], [ONDLIX], [ONINPX], [ONIVNO], [ONIVRF], [ONIVTP], [ONORNO], [ONWHLO], [ONYEA4])
GO
