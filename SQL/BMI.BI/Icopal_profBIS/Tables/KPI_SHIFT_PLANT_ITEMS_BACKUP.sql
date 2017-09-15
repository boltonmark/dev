﻿CREATE TABLE [dbo].[KPI_SHIFT_PLANT_ITEMS_BACKUP] (
    [PLANT_ID]    [dbo].[D_INT]  NOT NULL,
    [ITEM_NO]     [dbo].[N_C50]  NOT NULL,
    [ITEM_NAME]   [dbo].[N_C100] NULL,
    [CREATE_DATE] [dbo].[D_DATE] NULL,
    [CREATE_BY]   [dbo].[N_USER] NULL,
    [UPDATE_DATE] [dbo].[D_DATE] NULL,
    [UPDATE_BY]   [dbo].[N_USER] NULL,
    CONSTRAINT [PK_KPI_SHIFT_PLANT_ITEMS_BACKUP] PRIMARY KEY CLUSTERED ([PLANT_ID] ASC, [ITEM_NO] ASC)
);
