CREATE TABLE [psa].[ics_stg_M3V10vil_POL_OOLINE]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_vil_OOLINE_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_vil_OOLINE_IsIncomplete] DEFAULT ('N'),
[OBABNO] [numeric] (1, 0) NULL,
[OBACRF] [nchar] (8) NULL,
[OBADID] [nchar] (6) NULL,
[OBAETY] [numeric] (1, 0) NULL,
[OBAGLN] [numeric] (7, 0) NULL,
[OBAGNB] [nchar] (7) NULL,
[OBAGNO] [nchar] (7) NULL,
[OBALQA] [numeric] (15, 6) NULL,
[OBALQT] [numeric] (15, 6) NULL,
[OBALUN] [nchar] (3) NULL,
[OBALWQ] [nchar] (4) NULL,
[OBALWT] [numeric] (2, 0) NULL,
[OBAPBA] [numeric] (1, 0) NULL,
[OBATMO] [nchar] (10) NULL,
[OBATNR] [numeric] (17, 0) NULL,
[OBATPR] [nchar] (1) NULL,
[OBATV0] [nchar] (15) NULL,
[OBATV1] [numeric] (15, 6) NULL,
[OBATV2] [numeric] (15, 6) NULL,
[OBATV3] [numeric] (15, 6) NULL,
[OBATV4] [numeric] (15, 6) NULL,
[OBATV5] [numeric] (15, 6) NULL,
[OBATV6] [nchar] (15) NULL,
[OBATV7] [nchar] (15) NULL,
[OBATV8] [nchar] (15) NULL,
[OBATV9] [nchar] (15) NULL,
[OBBAGC] [nchar] (10) NULL,
[OBBAGD] [numeric] (8, 0) NULL,
[OBBANO] [nvarchar] (20) NULL,
[OBBNCD] [numeric] (1, 0) NULL,
[OBBPAT] [nchar] (6) NULL,
[OBBPST] [numeric] (1, 0) NULL,
[OBBUYE] [nchar] (10) NULL,
[OBCAMU] [nvarchar] (20) NULL,
[OBCAWE] [numeric] (15, 6) NULL,
[OBCFGL] [nchar] (15) NULL,
[OBCFIN] [numeric] (10, 0) NULL,
[OBCHID] [nchar] (10) NULL,
[OBCHNO] [numeric] (3, 0) NULL,
[OBCINA] [numeric] (1, 0) NULL,
[OBCMNO] [nchar] (4) NULL,
[OBCMP1] [nchar] (4) NULL,
[OBCMP2] [nchar] (4) NULL,
[OBCMP3] [nchar] (4) NULL,
[OBCMP4] [nchar] (4) NULL,
[OBCMP5] [nchar] (4) NULL,
[OBCMP6] [nchar] (4) NULL,
[OBCNNR] [numeric] (11, 0) NULL,
[OBCNQT] [numeric] (15, 6) NULL,
[OBCOCD] [numeric] (5, 0) NULL,
[OBCODT] [numeric] (8, 0) NULL,
[OBCODZ] [numeric] (8, 0) NULL,
[OBCOFA] [numeric] (15, 9) NULL,
[OBCOFS] [numeric] (15, 9) NULL,
[OBCOHM] [numeric] (4, 0) NULL,
[OBCOHZ] [numeric] (4, 0) NULL,
[OBCONO] [numeric] (18, 0) NOT NULL,
[OBCPRE] [nchar] (5) NULL,
[OBCTNO] [nchar] (10) NULL,
[OBCTNS] [nchar] (10) NULL,
[OBCUCD] [nchar] (3) NULL,
[OBCUCT] [nchar] (3) NULL,
[OBCUNO] [nchar] (10) NULL,
[OBCUOR] [nvarchar] (20) NULL,
[OBCUPA] [nvarchar] (20) NULL,
[OBCUPO] [numeric] (7, 0) NULL,
[OBCUSX] [numeric] (3, 0) NULL,
[OBD1QT] [numeric] (15, 6) NULL,
[OBDCCA] [numeric] (1, 0) NULL,
[OBDCCD] [numeric] (1, 0) NULL,
[OBDCCS] [numeric] (1, 0) NULL,
[OBDCHA] [numeric] (1, 0) NULL,
[OBDDSU] [numeric] (1, 0) NULL,
[OBDEFC] [numeric] (3, 0) NULL,
[OBDELS] [numeric] (1, 0) NULL,
[OBDIA1] [numeric] (15, 2) NULL,
[OBDIA2] [numeric] (15, 2) NULL,
[OBDIA3] [numeric] (15, 2) NULL,
[OBDIA4] [numeric] (15, 2) NULL,
[OBDIA5] [numeric] (15, 2) NULL,
[OBDIA6] [numeric] (15, 2) NULL,
[OBDIBE] [nchar] (1) NULL,
[OBDIC1] [numeric] (1, 0) NULL,
[OBDIC2] [numeric] (1, 0) NULL,
[OBDIC3] [numeric] (1, 0) NULL,
[OBDIC4] [numeric] (1, 0) NULL,
[OBDIC5] [numeric] (1, 0) NULL,
[OBDIC6] [numeric] (1, 0) NULL,
[OBDINR] [numeric] (5, 0) NULL,
[OBDIP1] [numeric] (5, 2) NULL,
[OBDIP2] [numeric] (5, 2) NULL,
[OBDIP3] [numeric] (5, 2) NULL,
[OBDIP4] [numeric] (5, 2) NULL,
[OBDIP5] [numeric] (5, 2) NULL,
[OBDIP6] [numeric] (5, 2) NULL,
[OBDIRE] [nchar] (1) NULL,
[OBDISX] [numeric] (2, 0) NULL,
[OBDIVI] [nchar] (3) NULL,
[OBDLBU] [numeric] (1, 0) NULL,
[OBDLQA] [numeric] (15, 6) NULL,
[OBDLQT] [numeric] (15, 6) NULL,
[OBDLSP] [nchar] (12) NULL,
[OBDLTS] [numeric] (4, 0) NULL,
[OBDMCF] [numeric] (1, 0) NULL,
[OBDMCS] [numeric] (1, 0) NULL,
[OBDPST] [numeric] (1, 0) NULL,
[OBDSDT] [numeric] (8, 0) NULL,
[OBDSGP] [nchar] (2) NULL,
[OBDSHM] [numeric] (4, 0) NULL,
[OBDSTX] [nvarchar] (36) NULL,
[OBDTID] [numeric] (13, 0) NULL,
[OBDWDT] [numeric] (8, 0) NULL,
[OBDWDZ] [numeric] (8, 0) NULL,
[OBDWHM] [numeric] (4, 0) NULL,
[OBDWHZ] [numeric] (4, 0) NULL,
[OBE0PA] [nvarchar] (17) NULL,
[OBECLC] [nchar] (2) NULL,
[OBECVS] [numeric] (3, 0) NULL,
[OBEDFP] [numeric] (17, 6) NULL,
[OBELNO] [nchar] (8) NULL,
[OBEWST] [numeric] (1, 0) NULL,
[OBFACI] [nchar] (3) NULL,
[OBFDED] [numeric] (8, 0) NULL,
[OBFWHL] [nchar] (3) NULL,
[OBGWTP] [nchar] (10) NULL,
[OBHAFE] [nchar] (6) NULL,
[OBHDPR] [nchar] (15) NULL,
[OBIDSC] [numeric] (1, 0) NULL,
[OBINAP] [nchar] (15) NULL,
[OBINPR] [numeric] (17, 6) NULL,
[OBITDS] [nvarchar] (30) NULL,
[OBITNO] [nchar] (15) NULL,
[OBIVQA] [numeric] (15, 6) NULL,
[OBIVQT] [numeric] (15, 6) NULL,
[OBJDCD] [nchar] (5) NULL,
[OBLDED] [numeric] (8, 0) NULL,
[OBLMDT] [numeric] (8, 0) NULL,
[OBLMTS] [numeric] (18, 0) NULL,
[OBLNA2] [numeric] (15, 2) NULL,
[OBLNAM] [numeric] (15, 2) NULL,
[OBLTYP] [nchar] (1) NULL,
[OBMNIN] [nchar] (1) NULL,
[OBMODL] [nchar] (3) NULL,
[OBMOYE] [nchar] (15) NULL,
[OBMUFT] [numeric] (2, 0) NULL,
[OBNEPR] [numeric] (17, 6) NULL,
[OBNOAA] [numeric] (1, 0) NULL,
[OBNTCD] [numeric] (1, 0) NULL,
[OBODI1] [numeric] (5, 2) NULL,
[OBODI2] [numeric] (5, 2) NULL,
[OBODI3] [numeric] (5, 2) NULL,
[OBOFNO] [nchar] (10) NULL,
[OBOFNR] [numeric] (5, 0) NULL,
[OBOFSX] [numeric] (2, 0) NULL,
[OBORCO] [nchar] (3) NULL,
[OBORNO] [nchar] (10) NOT NULL,
[OBORQA] [numeric] (15, 6) NULL,
[OBORQT] [numeric] (15, 6) NULL,
[OBORST] [nchar] (2) NULL,
[OBORTY] [nchar] (3) NULL,
[OBOTDI] [numeric] (1, 0) NULL,
[OBOURR] [nchar] (10) NULL,
[OBOURT] [nchar] (1) NULL,
[OBPACT] [nchar] (6) NULL,
[OBPCNR] [numeric] (5, 0) NULL,
[OBPCOF] [numeric] (15, 9) NULL,
[OBPCSU] [numeric] (2, 0) NULL,
[OBPLDT] [numeric] (8, 0) NULL,
[OBPLHM] [numeric] (4, 0) NULL,
[OBPLQA] [numeric] (15, 6) NULL,
[OBPLQT] [numeric] (15, 6) NULL,
[OBPONR] [numeric] (18, 0) NOT NULL,
[OBPOPN] [nvarchar] (30) NULL,
[OBPOSX] [numeric] (18, 0) NOT NULL,
[OBPOTX] [numeric] (13, 0) NULL,
[OBPPUN] [nchar] (3) NULL,
[OBPRAC] [numeric] (1, 0) NULL,
[OBPRCH] [numeric] (1, 0) NULL,
[OBPRHL] [nchar] (15) NULL,
[OBPRHW] [nchar] (15) NULL,
[OBPRMO] [nchar] (1) NULL,
[OBPRNO] [nchar] (15) NULL,
[OBPROJ] [nchar] (7) NULL,
[OBPRPR] [numeric] (1, 0) NULL,
[OBPRRF] [nchar] (2) NULL,
[OBPRTX] [numeric] (13, 0) NULL,
[OBPUCD] [numeric] (5, 0) NULL,
[OBPUPR] [numeric] (17, 6) NULL,
[OBPUSN] [nvarchar] (17) NULL,
[OBPUTP] [numeric] (1, 0) NULL,
[OBPWNR] [numeric] (5, 0) NULL,
[OBPWSX] [numeric] (2, 0) NULL,
[OBQTQL] [numeric] (1, 0) NULL,
[OBRELI] [numeric] (5, 0) NULL,
[OBREPI] [nchar] (15) NULL,
[OBREPN] [numeric] (10, 0) NULL,
[OBRGDT] [numeric] (8, 0) NULL,
[OBRGTM] [numeric] (6, 0) NULL,
[OBRNQA] [numeric] (15, 6) NULL,
[OBRNQT] [numeric] (15, 6) NULL,
[OBRODN] [numeric] (3, 0) NULL,
[OBRORC] [numeric] (1, 0) NULL,
[OBRORL] [numeric] (6, 0) NULL,
[OBRORN] [nchar] (10) NULL,
[OBRORX] [numeric] (3, 0) NULL,
[OBROUT] [nchar] (6) NULL,
[OBRSCD] [nchar] (3) NULL,
[OBRTQA] [numeric] (15, 6) NULL,
[OBRTQT] [numeric] (15, 6) NULL,
[OBSACD] [numeric] (5, 0) NULL,
[OBSAPR] [numeric] (17, 6) NULL,
[OBSCHN] [numeric] (11, 0) NULL,
[OBSCMO] [nchar] (6) NULL,
[OBSERN] [nvarchar] (20) NULL,
[OBSERW] [nvarchar] (20) NULL,
[OBSMCC] [numeric] (1, 0) NULL,
[OBSMCD] [nchar] (4) NULL,
[OBSPLC] [nchar] (2) NULL,
[OBSPOS] [numeric] (3, 0) NULL,
[OBSPUN] [nchar] (3) NULL,
[OBSRCD] [numeric] (1, 0) NULL,
[OBSTCD] [numeric] (1, 0) NULL,
[OBSUNO] [nchar] (10) NULL,
[OBTECN] [nvarchar] (20) NULL,
[OBTEDL] [nchar] (3) NULL,
[OBTEDS] [nvarchar] (60) NULL,
[OBTEL2] [nvarchar] (36) NULL,
[OBTEPA] [nchar] (3) NULL,
[OBTIZO] [nchar] (5) NULL,
[OBUCCD] [numeric] (1, 0) NULL,
[OBUCOS] [numeric] (17, 6) NULL,
[OBVERS] [numeric] (2, 0) NULL,
[OBVRCD] [nchar] (2) NULL,
[OBVTCD] [numeric] (2, 0) NULL,
[OBWATP] [nchar] (10) NULL,
[OBWATQ] [numeric] (1, 0) NULL,
[OBWHLO] [nchar] (3) NULL,
[OBWHSL] [nchar] (10) NULL
)
GO
ALTER TABLE [psa].[ics_stg_M3V10vil_POL_OOLINE] ADD CONSTRAINT [PK_psa_ics_stg_M3V10vil_POL_OOLINE] PRIMARY KEY CLUSTERED  ([OBCONO], [OBORNO], [OBPONR], [OBPOSX])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Mandatory reference to the database-specific unique identifier for the original source system of this data record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'DataSourceKey'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Batch Run Id context in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'EtlBatchRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for this record being added to this table.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'EtlCreatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process first added this record to this table.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'EtlCreatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that last marked this record deleted/inactive on this table; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'EtlDeletedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last marked this record deleted/inactive on this table; not usually re-set to null if the record is subsequently re-activated/un-deleted.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'EtlDeletedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The database-specific unique key of this record as identified within the ETL sub-system', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'EtlRecordId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the only or main table or object in the source system of record from which this row was extracted', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'EtlSourceTable'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Step Run Id context (within a Batch Run) in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'EtlStepRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The Thread Run Id context (within a Step Run) in which this record was added or last updated on this table – soft link back to the Batch Management database (BMI_BAT_MAN).', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'EtlThreadRunId'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The name of the module or mapping within the ETL process that was responsible for the last update for this record on this table; will be the same as EtlCreatedBy when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'EtlUpdatedBy'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The ETL system date and time that the ETL process last updated this record on this table; will be the same as EtlCreatedOn when the record is first added.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'EtlUpdatedOn'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates that this record is marked as or has been physically deleted in the source system of record.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'IsDeleted'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Indicates whether ETL processing is complete.  Used on PSA staging tables to indicate that the row may have changes that need to be re-processed by the ETL process (regardless of current ETL Batch Run Id).  May be used for late arriving dimensions to force facts to be re-processed outside of their originating batch.', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_M3V10vil_POL_OOLINE', 'COLUMN', N'IsIncomplete'
GO
