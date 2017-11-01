CREATE TABLE [tsa].[ics_land_M3V10vil_POL_MITTRA]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_vil_MITTRA_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_vil_MITTRA_IsDuplicate] DEFAULT ((0)),
[MTACRF] [nchar] (8) NULL,
[MTADCU] [numeric] (3, 0) NULL,
[MTANBR] [numeric] (9, 0) NULL,
[MTATNB] [numeric] (17, 0) NULL,
[MTATNR] [numeric] (17, 0) NULL,
[MTBANO] [nvarchar] (20) NULL,
[MTBIRT] [numeric] (10, 0) NULL,
[MTBRE2] [nvarchar] (20) NULL,
[MTBREF] [nvarchar] (20) NULL,
[MTCAMU] [nvarchar] (20) NULL,
[MTCANB] [numeric] (17, 0) NULL,
[MTCAWE] [numeric] (15, 6) NULL,
[MTCDTP] [numeric] (1, 0) NULL,
[MTCFGL] [nchar] (15) NULL,
[MTCNDA] [numeric] (8, 0) NULL,
[MTCONO] [numeric] (3, 0) NULL,
[MTCSQT] [numeric] (15, 6) NULL,
[MTCWTQ] [numeric] (15, 6) NULL,
[MTCWTT] [numeric] (15, 6) NULL,
[MTDEID] [numeric] (7, 0) NULL,
[MTECVE] [nchar] (4) NULL,
[MTELNO] [nchar] (8) NULL,
[MTFIAS] [numeric] (1, 0) NULL,
[MTHACP] [numeric] (17, 6) NULL,
[MTHACS] [numeric] (1, 0) NULL,
[MTINDI] [numeric] (1, 0) NULL,
[MTINER] [numeric] (1, 0) NULL,
[MTITNO] [nchar] (15) NULL,
[MTLMTS] [numeric] (18, 0) NULL,
[MTLOCH] [numeric] (1, 0) NULL,
[MTMFCO] [numeric] (17, 6) NULL,
[MTNHAI] [nchar] (15) NULL,
[MTNHSN] [nvarchar] (20) NULL,
[MTNSTQ] [numeric] (15, 6) NULL,
[MTNSTT] [numeric] (15, 6) NULL,
[MTOPAN] [nvarchar] (20) NULL,
[MTPANR] [nvarchar] (20) NULL,
[MTPLSX] [numeric] (3, 0) NULL,
[MTPRMF] [numeric] (7, 0) NULL,
[MTPROJ] [nchar] (7) NULL,
[MTREPN] [numeric] (10, 0) NULL,
[MTRESP] [nchar] (10) NULL,
[MTRFTX] [nvarchar] (40) NULL,
[MTRGDT] [numeric] (8, 0) NULL,
[MTRGTM] [numeric] (6, 0) NULL,
[MTRIDI] [numeric] (11, 0) NULL,
[MTRIDL] [numeric] (6, 0) NULL,
[MTRIDN] [nchar] (10) NULL,
[MTRIDO] [numeric] (6, 0) NULL,
[MTRIDX] [numeric] (3, 0) NULL,
[MTRORC] [numeric] (1, 0) NULL,
[MTRORL] [numeric] (6, 0) NULL,
[MTRORN] [nchar] (10) NULL,
[MTRORX] [numeric] (3, 0) NULL,
[MTRPRT] [numeric] (1, 0) NULL,
[MTRSCD] [nchar] (3) NULL,
[MTSCNB] [nchar] (10) NULL,
[MTSLTP] [nchar] (2) NULL,
[MTSTAS] [nchar] (1) NULL,
[MTSTCD] [numeric] (1, 0) NULL,
[MTSTNO] [numeric] (15, 6) NULL,
[MTSUDO] [nvarchar] (20) NULL,
[MTTMSX] [numeric] (3, 0) NULL,
[MTTRDT] [numeric] (8, 0) NULL,
[MTTRPR] [numeric] (17, 6) NULL,
[MTTRQA] [numeric] (15, 6) NULL,
[MTTRQT] [numeric] (15, 6) NULL,
[MTTRTM] [numeric] (6, 0) NULL,
[MTTRTP] [nchar] (3) NULL,
[MTTTID] [nchar] (3) NULL,
[MTTTYP] [numeric] (2, 0) NULL,
[MTTUPC] [numeric] (1, 0) NULL,
[MTUPIS] [numeric] (1, 0) NULL,
[MTWHLO] [nchar] (3) NULL,
[MTWHSL] [nchar] (10) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10vil_POL_MITTRA_1] ON [tsa].[ics_land_M3V10vil_POL_MITTRA] ([MTCONO], [MTITNO], [MTRGDT], [MTRGTM], [MTTMSX], [MTWHLO])
GO
