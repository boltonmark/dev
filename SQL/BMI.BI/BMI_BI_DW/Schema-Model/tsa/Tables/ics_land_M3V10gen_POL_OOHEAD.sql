CREATE TABLE [tsa].[ics_land_M3V10gen_POL_OOHEAD]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_gen_OOHEAD_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_gen_OOHEAD_IsDuplicate] DEFAULT ((0)),
[OA3RDP] [nchar] (10) NULL,
[OAADID] [nchar] (6) NULL,
[OAAGNO] [nchar] (7) NULL,
[OAAGNT] [nchar] (10) NULL,
[OAAICD] [numeric] (1, 0) NULL,
[OAARAT] [numeric] (11, 6) NULL,
[OABAGC] [nchar] (10) NULL,
[OABAGD] [numeric] (8, 0) NULL,
[OABLRO] [numeric] (15, 2) NULL,
[OABRAM] [numeric] (15, 2) NULL,
[OABREC] [nchar] (10) NULL,
[OABRLA] [numeric] (15, 2) NULL,
[OACHID] [nchar] (10) NULL,
[OACHL1] [nchar] (10) NULL,
[OACHL2] [nchar] (10) NULL,
[OACHL3] [nchar] (10) NULL,
[OACHL4] [nchar] (10) NULL,
[OACHNO] [numeric] (3, 0) NULL,
[OACHSY] [nchar] (10) NULL,
[OACMPN] [nchar] (4) NULL,
[OACOAM] [numeric] (17, 6) NULL,
[OACONO] [numeric] (3, 0) NULL,
[OACPRE] [nchar] (5) NULL,
[OACRTP] [numeric] (2, 0) NULL,
[OACUCD] [nchar] (3) NULL,
[OACUDT] [numeric] (8, 0) NULL,
[OACUNO] [nchar] (10) NULL,
[OACUOR] [nvarchar] (20) NULL,
[OACURD] [numeric] (8, 0) NULL,
[OADCCD] [numeric] (1, 0) NULL,
[OADICD] [numeric] (1, 0) NULL,
[OADISY] [nchar] (10) NULL,
[OADIVI] [nchar] (3) NULL,
[OADLSP] [nchar] (12) NULL,
[OADMCU] [numeric] (1, 0) NULL,
[OADMDT] [numeric] (8, 0) NULL,
[OADSTX] [nvarchar] (36) NULL,
[OADTID] [numeric] (13, 0) NULL,
[OAECLC] [nchar] (2) NULL,
[OAECTT] [numeric] (1, 0) NULL,
[OAELNO] [nchar] (8) NULL,
[OAEXCD] [nchar] (2) NULL,
[OAFACI] [nchar] (3) NULL,
[OAFDDT] [numeric] (8, 0) NULL,
[OAFDED] [numeric] (8, 0) NULL,
[OAFECN] [nchar] (10) NULL,
[OAFRE1] [nchar] (5) NULL,
[OAGRWE] [numeric] (9, 3) NULL,
[OAHAFE] [nchar] (6) NULL,
[OAHOCD] [numeric] (1, 0) NULL,
[OAIAPD] [numeric] (15, 2) NULL,
[OAINRC] [nchar] (10) NULL,
[OAIPAD] [nvarchar] (20) NULL,
[OAIPIV] [numeric] (15, 2) NULL,
[OAJNA] [nchar] (10) NULL,
[OAJNU] [numeric] (6, 0) NULL,
[OALDED] [numeric] (8, 0) NULL,
[OALMDT] [numeric] (8, 0) NULL,
[OALMTS] [numeric] (18, 0) NULL,
[OALNCD] [nchar] (2) NULL,
[OALOCD] [nchar] (3) NULL,
[OAMODL] [nchar] (3) NULL,
[OANBNS] [numeric] (5, 0) NULL,
[OANEWE] [numeric] (9, 3) NULL,
[OANREF] [nvarchar] (20) NULL,
[OANTAM] [numeric] (15, 2) NULL,
[OANTLA] [numeric] (15, 2) NULL,
[OAOBLC] [numeric] (1, 0) NULL,
[OAOFNO] [nchar] (10) NULL,
[OAOPRI] [numeric] (1, 0) NULL,
[OAORDT] [numeric] (8, 0) NULL,
[OAOREF] [nvarchar] (30) NULL,
[OAORNO] [nchar] (10) NULL,
[OAORSL] [nchar] (2) NULL,
[OAORST] [nchar] (2) NULL,
[OAORTP] [nchar] (3) NULL,
[OAOT38] [numeric] (1, 0) NULL,
[OAOTBA] [numeric] (15, 2) NULL,
[OAOTDP] [numeric] (13, 9) NULL,
[OAPLTB] [nchar] (10) NULL,
[OAPOTX] [numeric] (13, 0) NULL,
[OAPROJ] [nchar] (7) NULL,
[OAPRTX] [numeric] (13, 0) NULL,
[OAPYCD] [nchar] (3) NULL,
[OAPYNO] [nchar] (10) NULL,
[OARESP] [nchar] (10) NULL,
[OARGDT] [numeric] (8, 0) NULL,
[OARGTM] [numeric] (6, 0) NULL,
[OARLDT] [numeric] (8, 0) NULL,
[OARLDZ] [numeric] (8, 0) NULL,
[OARLHM] [numeric] (4, 0) NULL,
[OARLHZ] [numeric] (4, 0) NULL,
[OARODN] [numeric] (3, 0) NULL,
[OAROUT] [nchar] (6) NULL,
[OARPIV] [numeric] (15, 2) NULL,
[OASCED] [numeric] (1, 0) NULL,
[OASMCD] [nchar] (4) NULL,
[OASPLM] [nchar] (8) NULL,
[OATAXC] [nchar] (3) NULL,
[OATBLG] [numeric] (15, 2) NULL,
[OATECD] [nchar] (3) NULL,
[OATEDL] [nchar] (3) NULL,
[OATEL2] [nvarchar] (36) NULL,
[OATEPA] [nchar] (3) NULL,
[OATEPY] [nchar] (3) NULL,
[OATINC] [numeric] (1, 0) NULL,
[OATIZO] [nchar] (5) NULL,
[OATOPR] [numeric] (17, 6) NULL,
[OATXAP] [numeric] (1, 0) NULL,
[OATXID] [numeric] (13, 0) NULL,
[OAVAPD] [numeric] (15, 2) NULL,
[OAVOL3] [numeric] (9, 3) NULL,
[OAVRCD] [nchar] (2) NULL,
[OAVTCD] [numeric] (2, 0) NULL,
[OAWCON] [nchar] (3) NULL,
[OAWHLO] [nchar] (3) NULL,
[OAYREF] [nvarchar] (30) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10gen_POL_OOHEAD_1] ON [tsa].[ics_land_M3V10gen_POL_OOHEAD] ([OACONO], [OAORNO])
GO
