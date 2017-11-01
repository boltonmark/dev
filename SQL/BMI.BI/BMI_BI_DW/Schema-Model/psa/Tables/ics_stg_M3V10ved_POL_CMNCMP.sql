CREATE TABLE [psa].[ics_stg_M3V10ved_POL_CMNCMP]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ved_CMNCMP_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ved_CMNCMP_IsIncomplete] DEFAULT ('N'),
[JICCRT] [numeric] (2, 0) NULL,
[JICCUC] [nchar] (3) NULL,
[JICHID] [nchar] (10) NULL,
[JICHNO] [numeric] (3, 0) NULL,
[JICMTP] [numeric] (1, 0) NULL,
[JICONO] [numeric] (18, 0) NOT NULL,
[JIDBAS] [nchar] (10) NULL,
[JIDCFM] [nchar] (1) NULL,
[JIDFMN] [nchar] (10) NULL,
[JILL01] [nchar] (10) NULL,
[JILL02] [nchar] (10) NULL,
[JILL03] [nchar] (10) NULL,
[JILL04] [nchar] (10) NULL,
[JILL05] [nchar] (10) NULL,
[JILL06] [nchar] (10) NULL,
[JILL07] [nchar] (10) NULL,
[JILL08] [nchar] (10) NULL,
[JILL09] [nchar] (10) NULL,
[JILL10] [nchar] (10) NULL,
[JILMDT] [numeric] (8, 0) NULL,
[JIMNMN] [numeric] (1, 0) NULL,
[JIMNVR] [nchar] (10) NULL,
[JIMXV1] [nchar] (3) NULL,
[JIRGDT] [numeric] (8, 0) NULL,
[JIRGTM] [numeric] (6, 0) NULL,
[JISTMN] [nchar] (15) NULL,
[JITX40] [nvarchar] (40) NULL,
[JITXID] [numeric] (13, 0) NULL
)
GO
ALTER TABLE [psa].[ics_stg_M3V10ved_POL_CMNCMP] ADD CONSTRAINT [PK_psa_ics_stg_M3V10ved_POL_CMNCMP] PRIMARY KEY CLUSTERED  ([JICONO])
GO
