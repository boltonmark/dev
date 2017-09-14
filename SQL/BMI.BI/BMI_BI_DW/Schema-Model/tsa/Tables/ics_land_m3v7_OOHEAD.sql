CREATE TABLE [tsa].[ics_land_m3v7_OOHEAD]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_m3v7_OOHEAD_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_m3v7_OOHEAD_IsDuplicate] DEFAULT ((0)),
[OACONO] [decimal] (3, 0) NULL,
[OADIVI] [nvarchar] (255) NULL,
[OAORNO] [nvarchar] (255) NULL,
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
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_m3v7_OOHEAD_1] ON [tsa].[ics_land_m3v7_OOHEAD] ([OACONO], [OAORNO])
GO
