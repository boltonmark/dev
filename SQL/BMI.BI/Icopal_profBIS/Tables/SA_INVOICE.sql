﻿CREATE TABLE [dbo].[SA_INVOICE] (
    [REC_ID]                  UNIQUEIDENTIFIER    CONSTRAINT [DF_SA_INVOICE_REC_ID] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [SYSTEM_ID]               [dbo].[D_INT]       NOT NULL,
    [SITE_SOLD]               [dbo].[N_C20]       NOT NULL,
    [INVOICE_NUMBER]          [dbo].[N_C20]       NOT NULL,
    [INVOICE_LINE_NUMBER]     [dbo].[N_C20]       NOT NULL,
    [INVOICE_DATE]            [dbo].[D_DATE]      NULL,
    [INVOICE_TYPE]            [dbo].[N_C1]        NULL,
    [ORDER_NUMBER]            [dbo].[N_C20]       NULL,
    [ORDER_LINE_NUMBER]       [dbo].[N_C20]       NULL,
    [ITEM_NO]                 [dbo].[N_C50]       NULL,
    [SOLD_TO]                 [dbo].[N_C20]       NULL,
    [SHIP_TO]                 [dbo].[N_C20]       NULL,
    [INVOICE_QUANTITY]        [dbo].[D_DEC12.2]   NULL,
    [INVOICE_UOM]             [dbo].[N_C20]       NULL,
    [STATISTIC_QUANTITY]      [dbo].[D_DEC12.2]   NULL,
    [STATISTIC_UOM]           [dbo].[N_C20]       NULL,
    [QUANTITY]                [dbo].[D_DEC12.2]   NULL,
    [UOM]                     [dbo].[N_C20]       NULL,
    [INVOICE_AMOUNT]          [dbo].[D_DEC15,4]   NULL,
    [LOCAL_AMOUNT]            [dbo].[D_DEC15,4]   NULL,
    [GROUP_AMOUNT]            [dbo].[D_DEC15,4]   NULL,
    [INVOICE_CURRENCY]        [dbo].[N_CURRENCY]  NULL,
    [LOCAL_CURRENCY]          [dbo].[N_CURRENCY]  NULL,
    [LINE_DISCOUNT_AMOUNT]    [dbo].[D_DEC15,4]   NULL,
    [INVOICE_DISCOUNT_AMOUNT] [dbo].[D_DEC15,4]   NULL,
    [LINE_BONUS_AMOUNT]       [dbo].[D_DEC15,4]   NULL,
    [BONUS_SHARE_AMOUNT]      [dbo].[D_DEC15,4]   NULL,
    [STD_COST]                [dbo].[D_DEC15,4]   NULL,
    [STD_FREIGHT]             [dbo].[D_DEC15,4]   NULL,
    [SALESPERSON_ID]          [dbo].[N_C20]       NULL,
    [SALESPERSON_NAME]        [dbo].[N_C100]      NULL,
    [DELIVERY_DATE]           [dbo].[D_DATE]      NULL,
    [EXPECTED_PAYMENT_DATE]   [dbo].[D_DATE]      NULL,
    [ACTUAL_PAYMENT_DATE]     [dbo].[D_DATE]      NULL,
    [DELIVERY_TERM]           [dbo].[N_C20]       NULL,
    [DELIVERY_TERM_TEXT]      [dbo].[N_C100]      NULL,
    [PAYMENT_TERM]            [dbo].[N_C20]       NULL,
    [PAYMENT_TERM_TEXT]       [dbo].[N_C100]      NULL,
    [MATERIAL_CHAR1]          [dbo].[N_C50]       NULL,
    [MATERIAL_CHAR1_VALUE]    [dbo].[D_DEC12.2]   NULL,
    [MATERIAL_CHAR2]          [dbo].[N_C50]       NULL,
    [MATERIAL_CHAR2_VALUE]    [dbo].[D_DEC12.2]   NULL,
    [MATERIAL_CHAR3]          [dbo].[N_C50]       NULL,
    [MATERIAL_CHAR3_VALUE]    [dbo].[D_DEC12.2]   NULL,
    [MATERIAL_CHAR4]          [dbo].[N_C50]       NULL,
    [MATERIAL_CHAR4_VALUE]    [dbo].[D_DEC12.2]   NULL,
    [MATERIAL_CHAR5]          [dbo].[N_C50]       NULL,
    [MATERIAL_CHAR5_VALUE]    [dbo].[D_DEC12.2]   NULL,
    [KEEP_RECORD]             [dbo].[N_BOOLEAN_N] NULL,
    CONSTRAINT [PK_SA_INVOICE] PRIMARY KEY CLUSTERED ([REC_ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_SA_INVOICE]
    ON [dbo].[SA_INVOICE]([SYSTEM_ID] ASC, [INVOICE_DATE] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SA_INVOICE_1]
    ON [dbo].[SA_INVOICE]([SYSTEM_ID] ASC, [INVOICE_NUMBER] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SA_INVOICE_2]
    ON [dbo].[SA_INVOICE]([SYSTEM_ID] ASC, [ITEM_NO] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SA_INVOICE_3]
    ON [dbo].[SA_INVOICE]([SYSTEM_ID] ASC, [SOLD_TO] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_SA_INVOICE_4]
    ON [dbo].[SA_INVOICE]([SYSTEM_ID] ASC, [SHIP_TO] ASC);

