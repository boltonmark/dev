CREATE TABLE [psa].[ics_stg_M3V10vil_POL_FSCASH]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_vil_FSCASH_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_vil_FSCASH_IsIncomplete] DEFAULT ('N'),
[ESBCHN] [numeric] (5, 0) NULL,
[ESCDAM] [numeric] (15, 2) NULL,
[ESCDP1] [numeric] (4, 2) NULL,
[ESCDP2] [numeric] (4, 2) NULL,
[ESCDP3] [numeric] (4, 2) NULL,
[ESCDT1] [numeric] (8, 0) NULL,
[ESCDT2] [numeric] (8, 0) NULL,
[ESCDT3] [numeric] (8, 0) NULL,
[ESCINO] [nchar] (15) NULL,
[ESCONO] [numeric] (18, 0) NOT NULL,
[ESDIVI] [nchar] (3) NOT NULL,
[ESJBDT] [numeric] (6, 0) NULL,
[ESJBNO] [numeric] (6, 0) NULL,
[ESJBTM] [numeric] (6, 0) NULL,
[ESJRNO] [numeric] (7, 0) NULL,
[ESJSNO] [numeric] (7, 0) NULL,
[ESSPLT] [numeric] (1, 0) NULL,
[ESTECD] [nchar] (3) NULL,
[ESTRNO] [numeric] (7, 0) NULL,
[ESTSTM] [varchar] (26) NOT NULL,
[ESVONO] [numeric] (8, 0) NULL,
[ESVSER] [nchar] (3) NULL,
[ESYEA4] [numeric] (4, 0) NULL
)
GO
ALTER TABLE [psa].[ics_stg_M3V10vil_POL_FSCASH] ADD CONSTRAINT [PK_psa_ics_stg_M3V10vil_POL_FSCASH] PRIMARY KEY CLUSTERED  ([ESCONO], [ESDIVI], [ESTSTM])
GO
