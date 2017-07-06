﻿CREATE TABLE [dbo].[KPI_SHIFT_PRODUCTION] (
    [PRODUCTION_ID]       [dbo].[D_INT]       NOT NULL,
    [PRODLINE_ID]         [dbo].[D_INT]       NULL,
    [PROD_DATE]           [dbo].[D_DATE]      NULL,
    [PROD_SHIFT]          [dbo].[N_C20]       NULL,
    [SHIFT_ID]            [dbo].[D_INT]       NULL,
    [SYSTEM_ID]           [dbo].[D_INT]       NULL,
    [ITEM_NO]             [dbo].[N_C50]       NULL,
    [TOTAL_UNITS]         [dbo].[D_INT]       NULL,
    [PRIMA_UNITS]         [dbo].[D_INT]       NULL,
    [DEFECT_UNITS]        [dbo].[D_INT]       NULL,
    [SCHEDULED_HOURS]     [dbo].[D_DEC7.2]    NULL,
    [STOP_HOURS]          [dbo].[D_DEC7.2]    NULL,
    [NORM_SPEED]          [dbo].[D_DEC11.4]   NULL,
    [KG_PER_M2]           [dbo].[D_DEC11.4]   NULL,
    [UOM]                 [dbo].[N_C20]       NULL,
    [PRIMA_KG]            [dbo].[D_INT]       NULL,
    [DEFECT_KG]           [dbo].[D_INT]       NULL,
    [CREW_SIZE]           [dbo].[D_DEC7.2]    NULL,
    [DIRECT_LABOUR_HOURS] [dbo].[D_DEC7.2]    NULL,
    [CREATE_BY]           [dbo].[N_USER]      NULL,
    [CREATE_DATE]         [dbo].[D_DATE]      NULL,
    [UPDATE_BY]           [dbo].[D_USER]      NULL,
    [UPDATE_DATE]         [dbo].[D_DATE]      NULL,
    [MANUAL_INPUT]        [dbo].[N_BOOLEAN_Y] NULL,
    CONSTRAINT [PK_KPI_SHIFT_PRODUCTION] PRIMARY KEY CLUSTERED ([PRODUCTION_ID] ASC)
);

