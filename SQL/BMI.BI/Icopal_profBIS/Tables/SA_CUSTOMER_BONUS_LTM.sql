﻿CREATE TABLE [dbo].[SA_CUSTOMER_BONUS_LTM] (
    [SYSTEM_ID]   [dbo].[D_INT]     NOT NULL,
    [CUSTOMER_NO] [dbo].[N_C50]     NOT NULL,
    [SALE_LTM]    [dbo].[D_DEC12.2] NULL,
    [BONUS_LTM]   [dbo].[D_DEC12.2] NULL,
    [BONUS_PCT]   [dbo].[D_DEC7.2]  NULL,
    CONSTRAINT [PK_SA_CUSTOMER_BONUS_AVG] PRIMARY KEY CLUSTERED ([SYSTEM_ID] ASC, [CUSTOMER_NO] ASC)
);

