CREATE TABLE [psa].[ics_stg_M3V10ved_POL_OPAYMD]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ved_OPAYMD_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ved_OPAYMD_IsIncomplete] DEFAULT ('N'),
[ULCHID] [nchar] (10) NULL,
[ULCHNO] [numeric] (3, 0) NULL,
[ULCONO] [numeric] (18, 0) NOT NULL,
[ULCSHD] [nchar] (5) NULL,
[ULCUIN] [nchar] (3) NULL,
[ULDIVI] [nchar] (3) NULL,
[ULDUDT] [numeric] (8, 0) NULL,
[ULEXIN] [nchar] (14) NULL,
[ULIDAT] [numeric] (8, 0) NULL,
[ULINPX] [nchar] (6) NOT NULL,
[ULIVNO] [numeric] (18, 0) NOT NULL,
[ULLMDT] [numeric] (8, 0) NULL,
[ULPLNB] [numeric] (18, 0) NOT NULL,
[ULPMAM] [numeric] (15, 2) NULL,
[ULPMIA] [numeric] (15, 2) NULL,
[ULPMLA] [numeric] (15, 2) NULL,
[ULPMNB] [numeric] (18, 0) NOT NULL,
[ULRAIN] [numeric] (11, 6) NULL,
[ULRGDT] [numeric] (8, 0) NULL,
[ULRGTM] [numeric] (6, 0) NULL,
[ULYEA4] [numeric] (18, 0) NOT NULL
)
GO
ALTER TABLE [psa].[ics_stg_M3V10ved_POL_OPAYMD] ADD CONSTRAINT [PK_psa_ics_stg_M3V10ved_POL_OPAYMD] PRIMARY KEY CLUSTERED  ([ULCONO], [ULINPX], [ULIVNO], [ULPLNB], [ULPMNB], [ULYEA4])
GO
