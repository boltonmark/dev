CREATE TABLE [tsa].[ics_land_M3V10ved_POL_OOLINE]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF__ics_land___Exclu__42E2BA55] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF__ics_land___IsDup__43D6DE8E] DEFAULT ((0)),
[OBABNO] [numeric] (18, 0) NULL,
[OBACRF] [nchar] (8) NULL,
[OBADID] [nchar] (6) NULL,
[OBAETY] [numeric] (18, 0) NULL,
[OBAGLN] [numeric] (18, 0) NULL,
[OBAGNB] [nchar] (7) NULL,
[OBAGNO] [nchar] (7) NULL,
[OBALQA] [numeric] (18, 0) NULL,
[OBALQT] [numeric] (18, 0) NULL,
[OBALUN] [nchar] (3) NULL,
[OBALWQ] [nchar] (4) NULL,
[OBALWT] [numeric] (18, 0) NULL,
[OBAPBA] [numeric] (18, 0) NULL,
[OBATMO] [nchar] (10) NULL,
[OBATNR] [numeric] (18, 0) NULL,
[OBATPR] [nchar] (1) NULL,
[OBATV0] [nchar] (15) NULL,
[OBATV1] [numeric] (18, 0) NULL,
[OBATV2] [numeric] (18, 0) NULL,
[OBATV3] [numeric] (18, 0) NULL,
[OBATV4] [numeric] (18, 0) NULL,
[OBATV5] [numeric] (18, 0) NULL,
[OBATV6] [nchar] (15) NULL,
[OBATV7] [nchar] (15) NULL,
[OBATV8] [nchar] (15) NULL,
[OBATV9] [nchar] (15) NULL,
[OBBAGC] [nchar] (10) NULL,
[OBBAGD] [numeric] (18, 0) NULL,
[OBBANO] [nvarchar] (20) NULL,
[OBBNCD] [numeric] (18, 0) NULL,
[OBBPAT] [nchar] (6) NULL,
[OBBPST] [numeric] (18, 0) NULL,
[OBBUYE] [nchar] (10) NULL,
[OBCAMU] [nvarchar] (20) NULL,
[OBCAWE] [numeric] (18, 0) NULL,
[OBCFGL] [nchar] (15) NULL,
[OBCFIN] [numeric] (18, 0) NULL,
[OBCHID] [nchar] (10) NULL,
[OBCHNO] [numeric] (18, 0) NULL,
[OBCINA] [numeric] (18, 0) NULL,
[OBCMNO] [nchar] (4) NULL,
[OBCMP1] [nchar] (4) NULL,
[OBCMP2] [nchar] (4) NULL,
[OBCMP3] [nchar] (4) NULL,
[OBCMP4] [nchar] (4) NULL,
[OBCMP5] [nchar] (4) NULL,
[OBCMP6] [nchar] (4) NULL,
[OBCNNR] [numeric] (18, 0) NULL,
[OBCNQT] [numeric] (18, 0) NULL,
[OBCOCD] [numeric] (18, 0) NULL,
[OBCODT] [numeric] (18, 0) NULL,
[OBCODZ] [numeric] (18, 0) NULL,
[OBCOFA] [numeric] (18, 0) NULL,
[OBCOFS] [numeric] (18, 0) NULL,
[OBCOHM] [numeric] (18, 0) NULL,
[OBCOHZ] [numeric] (18, 0) NULL,
[OBCONO] [numeric] (18, 0) NULL,
[OBCPRE] [nchar] (5) NULL,
[OBCTNO] [nchar] (10) NULL,
[OBCTNS] [nchar] (10) NULL,
[OBCUCD] [nchar] (3) NULL,
[OBCUCT] [nchar] (3) NULL,
[OBCUNO] [nchar] (10) NULL,
[OBCUOR] [nvarchar] (20) NULL,
[OBCUPA] [nvarchar] (20) NULL,
[OBCUPO] [numeric] (18, 0) NULL,
[OBCUSX] [numeric] (18, 0) NULL,
[OBD1QT] [numeric] (18, 0) NULL,
[OBDCCA] [numeric] (18, 0) NULL,
[OBDCCD] [numeric] (18, 0) NULL,
[OBDCCS] [numeric] (18, 0) NULL,
[OBDCHA] [numeric] (18, 0) NULL,
[OBDDSU] [numeric] (18, 0) NULL,
[OBDEFC] [numeric] (18, 0) NULL,
[OBDELS] [numeric] (18, 0) NULL,
[OBDIA1] [numeric] (18, 0) NULL,
[OBDIA2] [numeric] (18, 0) NULL,
[OBDIA3] [numeric] (18, 0) NULL,
[OBDIA4] [numeric] (18, 0) NULL,
[OBDIA5] [numeric] (18, 0) NULL,
[OBDIA6] [numeric] (18, 0) NULL,
[OBDIBE] [nchar] (1) NULL,
[OBDIC1] [numeric] (18, 0) NULL,
[OBDIC2] [numeric] (18, 0) NULL,
[OBDIC3] [numeric] (18, 0) NULL,
[OBDIC4] [numeric] (18, 0) NULL,
[OBDIC5] [numeric] (18, 0) NULL,
[OBDIC6] [numeric] (18, 0) NULL,
[OBDINR] [numeric] (18, 0) NULL,
[OBDIP1] [numeric] (18, 0) NULL,
[OBDIP2] [numeric] (18, 0) NULL,
[OBDIP3] [numeric] (18, 0) NULL,
[OBDIP4] [numeric] (18, 0) NULL,
[OBDIP5] [numeric] (18, 0) NULL,
[OBDIP6] [numeric] (18, 0) NULL,
[OBDIRE] [nchar] (1) NULL,
[OBDISX] [numeric] (18, 0) NULL,
[OBDIVI] [nchar] (3) NULL,
[OBDLBU] [numeric] (18, 0) NULL,
[OBDLQA] [numeric] (18, 0) NULL,
[OBDLQT] [numeric] (18, 0) NULL,
[OBDLSP] [nchar] (12) NULL,
[OBDLTS] [numeric] (18, 0) NULL,
[OBDMCF] [numeric] (18, 0) NULL,
[OBDMCS] [numeric] (18, 0) NULL,
[OBDPST] [numeric] (18, 0) NULL,
[OBDSDT] [numeric] (18, 0) NULL,
[OBDSGP] [nchar] (2) NULL,
[OBDSHM] [numeric] (18, 0) NULL,
[OBDSTX] [nvarchar] (36) NULL,
[OBDTID] [numeric] (18, 0) NULL,
[OBDWDT] [numeric] (18, 0) NULL,
[OBDWDZ] [numeric] (18, 0) NULL,
[OBDWHM] [numeric] (18, 0) NULL,
[OBDWHZ] [numeric] (18, 0) NULL,
[OBE0PA] [nvarchar] (17) NULL,
[OBECLC] [nchar] (2) NULL,
[OBECVS] [numeric] (18, 0) NULL,
[OBEDFP] [numeric] (18, 0) NULL,
[OBELNO] [nchar] (8) NULL,
[OBEWST] [numeric] (18, 0) NULL,
[OBFACI] [nchar] (3) NULL,
[OBFDED] [numeric] (18, 0) NULL,
[OBFWHL] [nchar] (3) NULL,
[OBGWTP] [nchar] (10) NULL,
[OBHAFE] [nchar] (6) NULL,
[OBHDPR] [nchar] (15) NULL,
[OBIDSC] [numeric] (18, 0) NULL,
[OBINAP] [nchar] (15) NULL,
[OBINPR] [numeric] (18, 0) NULL,
[OBITDS] [nvarchar] (30) NULL,
[OBITNO] [nchar] (15) NULL,
[OBIVQA] [numeric] (18, 0) NULL,
[OBIVQT] [numeric] (18, 0) NULL,
[OBJDCD] [nchar] (5) NULL,
[OBLDED] [numeric] (18, 0) NULL,
[OBLMDT] [numeric] (18, 0) NULL,
[OBLMTS] [numeric] (18, 0) NULL,
[OBLNA2] [numeric] (18, 0) NULL,
[OBLNAM] [numeric] (18, 0) NULL,
[OBLTYP] [nchar] (1) NULL,
[OBMNIN] [nchar] (1) NULL,
[OBMODL] [nchar] (3) NULL,
[OBMOYE] [nchar] (15) NULL,
[OBMUFT] [numeric] (18, 0) NULL,
[OBNEPR] [numeric] (18, 0) NULL,
[OBNOAA] [numeric] (18, 0) NULL,
[OBNTCD] [numeric] (18, 0) NULL,
[OBODI1] [numeric] (18, 0) NULL,
[OBODI2] [numeric] (18, 0) NULL,
[OBODI3] [numeric] (18, 0) NULL,
[OBOFNO] [nchar] (10) NULL,
[OBOFNR] [numeric] (18, 0) NULL,
[OBOFSX] [numeric] (18, 0) NULL,
[OBORCO] [nchar] (3) NULL,
[OBORNO] [nchar] (10) NULL,
[OBORQA] [numeric] (18, 0) NULL,
[OBORQT] [numeric] (18, 0) NULL,
[OBORST] [nchar] (2) NULL,
[OBORTY] [nchar] (3) NULL,
[OBOTDI] [numeric] (18, 0) NULL,
[OBOURR] [nchar] (10) NULL,
[OBOURT] [nchar] (1) NULL,
[OBPACT] [nchar] (6) NULL,
[OBPCNR] [numeric] (18, 0) NULL,
[OBPCOF] [numeric] (18, 0) NULL,
[OBPCSU] [numeric] (18, 0) NULL,
[OBPLDT] [numeric] (18, 0) NULL,
[OBPLHM] [numeric] (18, 0) NULL,
[OBPLQA] [numeric] (18, 0) NULL,
[OBPLQT] [numeric] (18, 0) NULL,
[OBPONR] [numeric] (18, 0) NULL,
[OBPOPN] [nvarchar] (30) NULL,
[OBPOSX] [numeric] (18, 0) NULL,
[OBPOTX] [numeric] (18, 0) NULL,
[OBPPUN] [nchar] (3) NULL,
[OBPRAC] [numeric] (18, 0) NULL,
[OBPRCH] [numeric] (18, 0) NULL,
[OBPRHL] [nchar] (15) NULL,
[OBPRHW] [nchar] (15) NULL,
[OBPRMO] [nchar] (1) NULL,
[OBPRNO] [nchar] (15) NULL,
[OBPROJ] [nchar] (7) NULL,
[OBPRPR] [numeric] (18, 0) NULL,
[OBPRRF] [nchar] (2) NULL,
[OBPRTX] [numeric] (18, 0) NULL,
[OBPUCD] [numeric] (18, 0) NULL,
[OBPUPR] [numeric] (18, 0) NULL,
[OBPUSN] [nvarchar] (17) NULL,
[OBPUTP] [numeric] (18, 0) NULL,
[OBPWNR] [numeric] (18, 0) NULL,
[OBPWSX] [numeric] (18, 0) NULL,
[OBQTQL] [numeric] (18, 0) NULL,
[OBRELI] [numeric] (18, 0) NULL,
[OBREPI] [nchar] (15) NULL,
[OBREPN] [numeric] (18, 0) NULL,
[OBRGDT] [numeric] (18, 0) NULL,
[OBRGTM] [numeric] (18, 0) NULL,
[OBRNQA] [numeric] (18, 0) NULL,
[OBRNQT] [numeric] (18, 0) NULL,
[OBRODN] [numeric] (18, 0) NULL,
[OBRORC] [numeric] (18, 0) NULL,
[OBRORL] [numeric] (18, 0) NULL,
[OBRORN] [nchar] (10) NULL,
[OBRORX] [numeric] (18, 0) NULL,
[OBROUT] [nchar] (6) NULL,
[OBRSCD] [nchar] (3) NULL,
[OBRTQA] [numeric] (18, 0) NULL,
[OBRTQT] [numeric] (18, 0) NULL,
[OBSACD] [numeric] (18, 0) NULL,
[OBSAPR] [numeric] (18, 0) NULL,
[OBSCHN] [numeric] (18, 0) NULL,
[OBSCMO] [nchar] (6) NULL,
[OBSERN] [nvarchar] (20) NULL,
[OBSERW] [nvarchar] (20) NULL,
[OBSMCC] [numeric] (18, 0) NULL,
[OBSMCD] [nchar] (4) NULL,
[OBSPLC] [nchar] (2) NULL,
[OBSPOS] [numeric] (18, 0) NULL,
[OBSPUN] [nchar] (3) NULL,
[OBSRCD] [numeric] (18, 0) NULL,
[OBSTCD] [numeric] (18, 0) NULL,
[OBSUNO] [nchar] (10) NULL,
[OBTECN] [nvarchar] (20) NULL,
[OBTEDL] [nchar] (3) NULL,
[OBTEDS] [nvarchar] (60) NULL,
[OBTEL2] [nvarchar] (36) NULL,
[OBTEPA] [nchar] (3) NULL,
[OBTIZO] [nchar] (5) NULL,
[OBUCCD] [numeric] (18, 0) NULL,
[OBUCOS] [numeric] (18, 0) NULL,
[OBVERS] [numeric] (18, 0) NULL,
[OBVRCD] [nchar] (2) NULL,
[OBVTCD] [numeric] (18, 0) NULL,
[OBWATP] [nchar] (10) NULL,
[OBWATQ] [numeric] (18, 0) NULL,
[OBWHLO] [nchar] (3) NULL,
[OBWHSL] [nchar] (10) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10ved_POL_OOLINE_1] ON [tsa].[ics_land_M3V10ved_POL_OOLINE] ([OBCONO], [OBORNO], [OBPONR], [OBPOSX])
GO
