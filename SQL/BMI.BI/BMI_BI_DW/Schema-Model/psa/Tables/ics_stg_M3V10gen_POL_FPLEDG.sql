CREATE TABLE [psa].[ics_stg_M3V10gen_POL_FPLEDG]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_gen_FPLEDG_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_gen_FPLEDG_IsIncomplete] DEFAULT ('N'),
[EPACDT] [numeric] (8, 0) NULL,
[EPAPCD] [nchar] (10) NULL,
[EPAPRV] [numeric] (1, 0) NULL,
[EPARAT] [numeric] (11, 6) NULL,
[EPARCD] [numeric] (1, 0) NULL,
[EPBKID] [nchar] (5) NULL,
[EPBLBY] [nchar] (10) NULL,
[EPBLDT] [numeric] (8, 0) NULL,
[EPCHID] [nchar] (10) NULL,
[EPCHNO] [numeric] (3, 0) NULL,
[EPCONO] [numeric] (18, 0) NOT NULL,
[EPCRTP] [numeric] (2, 0) NULL,
[EPCUAM] [numeric] (15, 2) NULL,
[EPCUCD] [nchar] (3) NULL,
[EPDCAM] [numeric] (1, 0) NULL,
[EPDEDA] [numeric] (8, 0) NULL,
[EPDIVI] [nchar] (3) NOT NULL,
[EPDUDT] [numeric] (8, 0) NULL,
[EPENME] [numeric] (1, 0) NULL,
[EPINYR] [numeric] (4, 0) NULL,
[EPIVBL] [numeric] (1, 0) NULL,
[EPIVCL] [nchar] (5) NULL,
[EPIVDT] [numeric] (8, 0) NULL,
[EPIVTP] [nchar] (2) NULL,
[EPJRNO] [numeric] (18, 0) NOT NULL,
[EPJSNO] [numeric] (18, 0) NOT NULL,
[EPLMDT] [numeric] (8, 0) NULL,
[EPLMTS] [numeric] (18, 0) NULL,
[EPPYME] [nchar] (3) NULL,
[EPPYRS] [nchar] (2) NULL,
[EPPYST] [numeric] (1, 0) NULL,
[EPPYTP] [nchar] (2) NULL,
[EPRECO] [numeric] (1, 0) NULL,
[EPREDE] [numeric] (8, 0) NULL,
[EPRGDT] [numeric] (8, 0) NULL,
[EPRGTM] [numeric] (6, 0) NULL,
[EPSINO] [nvarchar] (24) NULL,
[EPSLOP] [numeric] (2, 0) NULL,
[EPSPYN] [nchar] (10) NULL,
[EPSUCL] [nchar] (3) NULL,
[EPSUNO] [nchar] (10) NULL,
[EPTDCD] [nchar] (4) NULL,
[EPTDSC] [nchar] (10) NULL,
[EPTECD] [nchar] (3) NULL,
[EPTEPY] [nchar] (3) NULL,
[EPTRCD] [numeric] (2, 0) NULL,
[EPTXID] [numeric] (13, 0) NULL,
[EPVONO] [numeric] (8, 0) NULL,
[EPVSER] [nchar] (3) NULL,
[EPVTAM] [numeric] (15, 2) NULL,
[EPYEA4] [numeric] (18, 0) NOT NULL
)
GO
ALTER TABLE [psa].[ics_stg_M3V10gen_POL_FPLEDG] ADD CONSTRAINT [PK_psa_ics_stg_M3V10gen_POL_FPLEDG] PRIMARY KEY CLUSTERED  ([EPCONO], [EPDIVI], [EPJRNO], [EPJSNO], [EPYEA4])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10gen_POL_FPLEDG', NULL, NULL
GO
