CREATE TABLE [psa].[ics_stg_m3v7_OOHEAD]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_m3v7_OOHEAD_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_m3v7_OOHEAD_IsIncomplete] DEFAULT ('N'),
[OACONO] [decimal] (18, 0) NOT NULL,
[OADIVI] [nvarchar] (255) NULL,
[OAORNO] [nvarchar] (255) NOT NULL,
[OAORTP] [nvarchar] (255) NULL,
[OAFACI] [nvarchar] (255) NULL,
[OAWHLO] [nvarchar] (255) NULL,
[OAORST] [nvarchar] (255) NULL,
[OAORSL] [nvarchar] (255) NULL,
[OACHL1] [nvarchar] (255) NULL,
[OACHL2] [nvarchar] (255) NULL,
[OACHL3] [nvarchar] (255) NULL,
[OACHL4] [nvarchar] (255) NULL,
[OACUNO] [nvarchar] (255) NULL,
[OAORDT] [decimal] (8, 0) NULL,
[OACUDT] [decimal] (8, 0) NULL,
[OARLDT] [decimal] (8, 0) NULL,
[OARLHM] [decimal] (4, 0) NULL,
[OARLDZ] [decimal] (8, 0) NULL,
[OARLHZ] [decimal] (4, 0) NULL,
[OATIZO] [nvarchar] (255) NULL,
[OADMDT] [decimal] (8, 0) NULL,
[OACURD] [decimal] (8, 0) NULL,
[OAFDDT] [decimal] (8, 0) NULL,
[OAOPRI] [decimal] (1, 0) NULL,
[OAAICD] [decimal] (1, 0) NULL,
[OAOBLC] [decimal] (1, 0) NULL,
[OAECTT] [decimal] (1, 0) NULL,
[OAOT38] [decimal] (1, 0) NULL,
[OALNCD] [nvarchar] (255) NULL,
[OATEPY] [nvarchar] (255) NULL,
[OAPYCD] [nvarchar] (255) NULL,
[OATECD] [nvarchar] (255) NULL,
[OAMODL] [nvarchar] (255) NULL,
[OATEDL] [nvarchar] (255) NULL,
[OATEL2] [nvarchar] (255) NULL,
[OATEPA] [nvarchar] (255) NULL,
[OAADID] [nvarchar] (255) NULL,
[OASMCD] [nvarchar] (255) NULL,
[OAOFNO] [nvarchar] (255) NULL,
[OAOREF] [nvarchar] (255) NULL,
[OAYREF] [nvarchar] (255) NULL,
[OACUOR] [nvarchar] (255) NULL,
[OAPROJ] [nvarchar] (255) NULL,
[OAELNO] [nvarchar] (255) NULL,
[OAWCON] [nvarchar] (255) NULL,
[OAVRCD] [nvarchar] (255) NULL,
[OAFRE1] [nvarchar] (255) NULL,
[OAPYNO] [nvarchar] (255) NULL,
[OAINRC] [nvarchar] (255) NULL,
[OAAGNO] [nvarchar] (255) NULL,
[OABAGC] [nvarchar] (255) NULL,
[OABAGD] [decimal] (8, 0) NULL,
[OAPLTB] [nvarchar] (255) NULL,
[OADISY] [nvarchar] (255) NULL,
[OAEXCD] [nvarchar] (255) NULL,
[OATINC] [decimal] (1, 0) NULL,
[OALOCD] [nvarchar] (255) NULL,
[OACUCD] [nvarchar] (255) NULL,
[OADCCD] [decimal] (1, 0) NULL,
[OACRTP] [decimal] (2, 0) NULL,
[OAFECN] [nvarchar] (255) NULL,
[OAARAT] [decimal] (11, 6) NULL,
[OADMCU] [decimal] (1, 0) NULL,
[OABREC] [nvarchar] (255) NULL,
[OAAGNT] [nvarchar] (255) NULL,
[OAGRWE] [decimal] (9, 3) NULL,
[OANEWE] [decimal] (9, 3) NULL,
[OAVOL3] [decimal] (9, 3) NULL,
[OACOAM] [decimal] (17, 6) NULL,
[OABRAM] [decimal] (15, 2) NULL,
[OABRLA] [decimal] (15, 2) NULL,
[OANTAM] [decimal] (15, 2) NULL,
[OANTLA] [decimal] (15, 2) NULL,
[OARPIV] [decimal] (15, 2) NULL,
[OAIPIV] [decimal] (15, 2) NULL,
[OAIAPD] [decimal] (15, 2) NULL,
[OAVAPD] [decimal] (15, 2) NULL,
[OAOTBA] [decimal] (15, 2) NULL,
[OAOTDP] [decimal] (13, 9) NULL,
[OADICD] [decimal] (1, 0) NULL,
[OACMPN] [nvarchar] (255) NULL,
[OATOPR] [decimal] (17, 6) NULL,
[OATBLG] [decimal] (15, 2) NULL,
[OANBNS] [decimal] (5, 0) NULL,
[OAHOCD] [decimal] (1, 0) NULL,
[OACHSY] [nvarchar] (255) NULL,
[OAECLC] [nvarchar] (255) NULL,
[OACPRE] [nvarchar] (255) NULL,
[OAHAFE] [nvarchar] (255) NULL,
[OATAXC] [nvarchar] (255) NULL,
[OAJNA] [nvarchar] (255) NULL,
[OAJNU] [decimal] (6, 0) NULL,
[OATXID] [decimal] (13, 0) NULL,
[OAPRTX] [decimal] (13, 0) NULL,
[OAPOTX] [decimal] (13, 0) NULL,
[OADTID] [decimal] (13, 0) NULL,
[OAROUT] [nvarchar] (255) NULL,
[OARODN] [decimal] (3, 0) NULL,
[OADLSP] [nvarchar] (255) NULL,
[OADSTX] [nvarchar] (255) NULL,
[OAFDED] [decimal] (8, 0) NULL,
[OALDED] [decimal] (8, 0) NULL,
[OARESP] [nvarchar] (255) NULL,
[OASPLM] [nvarchar] (255) NULL,
[OABLRO] [decimal] (15, 2) NULL,
[OATXAP] [decimal] (1, 0) NULL,
[OAVTCD] [decimal] (2, 0) NULL,
[OANREF] [nvarchar] (255) NULL,
[OA3RDP] [nvarchar] (255) NULL,
[OAIPAD] [nvarchar] (255) NULL,
[OARGDT] [decimal] (8, 0) NULL,
[OARGTM] [decimal] (6, 0) NULL,
[OALMDT] [decimal] (8, 0) NULL,
[OACHNO] [decimal] (3, 0) NULL,
[OACHID] [nvarchar] (255) NULL
)
GO
ALTER TABLE [psa].[ics_stg_m3v7_OOHEAD] ADD CONSTRAINT [PK_stg_m3v7_OOHEAD] PRIMARY KEY CLUSTERED  ([OACONO], [OAORNO])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mandatory reference to the database-specific unique identifier for the original source system of this data record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'DataSourceKey'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Batch Run Id context in which this record was added or last updated – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'EtlBatchRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for this record being added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'EtlCreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process first added this record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'EtlCreatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that last marked this record deleted/inactive; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'EtlDeletedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last marked this record deleted/inactive; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'EtlDeletedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The database-specific unique key of this record as identified within the ETL sub-system', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'EtlRecordId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the only or main table or object in the source system of record from where this row was extracted', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'EtlSourceTable'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Step Run Id context (within a Batch Run) in which this record was added or last updated – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'EtlStepRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Thread Run Id context (within a Step Run) in which this record was added or last updated – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'EtlThreadRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for the last update for this record; will be the same as EtlCreatedBy when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'EtlUpdatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last updated this record; will be the same as EtlCreatedOn when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'EtlUpdatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates that this record is marked as or has been physically deleted in the source system of record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'IsDeleted'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates whether ETL processing is complete.  Used on PSA staging tables to indicate that the row may have changes that need to be re-processed by the ETL process (regardless of current ETL Batch Run Id).  May be used for late arriving dimensions to force facts to be re-processed outside of their originating batch.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_OOHEAD', 'COLUMN', N'IsIncomplete'
GO
