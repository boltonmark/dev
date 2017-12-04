CREATE TABLE [psa].[ics_stg_m3_MPLIND]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ics_stg_m3_MPLIND_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ics_stg_m3_MPLIND_IsIncomplete] DEFAULT ('N'),
[ICAGNB] [nvarchar] (255) NULL,
[ICARDT] [decimal] (8, 0) NULL,
[ICBANO] [nvarchar] (255) NULL,
[ICBOLN] [nvarchar] (255) NULL,
[ICCAMU] [nvarchar] (255) NULL,
[ICCARN] [nvarchar] (255) NULL,
[ICCHPO] [decimal] (1, 0) NULL,
[ICCONO] [decimal] (3, 0) NULL,
[ICDLIX] [decimal] (11, 0) NULL,
[ICDNDT] [decimal] (8, 0) NULL,
[ICDTID] [decimal] (13, 0) NULL,
[ICFACI] [nvarchar] (255) NULL,
[ICFWRF] [nvarchar] (255) NULL,
[ICLMTS] [decimal] (18, 0) NULL,
[ICNDDT] [decimal] (8, 0) NULL,
[ICNEAC] [decimal] (1, 0) NULL,
[ICNOPK] [decimal] (5, 0) NULL,
[ICOEND] [decimal] (1, 0) NULL,
[ICPACC] [nvarchar] (255) NULL,
[ICPACN] [nvarchar] (255) NULL,
[ICPLDT] [decimal] (8, 0) NULL,
[ICPNLI] [decimal] (3, 0) NOT NULL,
[ICPNLS] [decimal] (3, 0) NOT NULL,
[ICPNLX] [decimal] (5, 0) NOT NULL,
[ICPUNO] [nvarchar] (255) NOT NULL,
[ICPUOS] [nvarchar] (255) NULL,
[ICRENE] [nvarchar] (255) NULL,
[ICREOR] [decimal] (1, 0) NULL,
[ICREPN] [decimal] (10, 0) NOT NULL,
[ICRESP] [nvarchar] (255) NULL,
[ICRGDT] [decimal] (8, 0) NULL,
[ICRGTM] [decimal] (6, 0) NULL,
[ICRPQA] [decimal] (15, 6) NULL,
[ICRPQT] [decimal] (15, 6) NULL,
[ICSCOP] [decimal] (19, 8) NULL,
[ICSDDT] [decimal] (8, 0) NULL,
[ICSERA] [decimal] (11, 6) NULL,
[ICSMDT] [decimal] (8, 0) NULL,
[ICSTWH] [nvarchar] (255) NULL,
[ICSUDO] [nvarchar] (255) NOT NULL,
[ICSUNO] [nvarchar] (255) NULL,
[ICTIHM] [decimal] (4, 0) NULL,
[ICTRDT] [decimal] (8, 0) NULL,
[ICTXID] [decimal] (13, 0) NULL,
[ICUGCD] [decimal] (1, 0) NULL,
[ICWHLO] [nvarchar] (255) NULL,
[ICWHSL] [nvarchar] (255) NULL
)
GO
ALTER TABLE [psa].[ics_stg_m3_MPLIND] ADD CONSTRAINT [PK_psa_ics_stg_m3_MPLIND] PRIMARY KEY CLUSTERED  ([ICPUNO], [ICPNLI], [ICPNLS], [ICPNLX], [ICSUDO], [ICREPN])
GO
