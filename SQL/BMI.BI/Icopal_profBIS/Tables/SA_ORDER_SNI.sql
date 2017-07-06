﻿CREATE TABLE [dbo].[SA_ORDER_SNI] (
    [REC_ID]                UNIQUEIDENTIFIER    CONSTRAINT [DF_SA_ORDER_SNI_REC_ID] DEFAULT (newid()) ROWGUIDCOL NOT NULL,
    [SYSTEM_ID]             [dbo].[D_INT]       NOT NULL,
    [SITE_SOLD]             [dbo].[N_C20]       NOT NULL,
    [EXPECTED_INVOICE_DATE] [dbo].[D_DATE]      NULL,
    [ORDER_TYPE]            [dbo].[N_C1]        NULL,
    [ORDER_NUMBER]          [dbo].[N_C20]       NULL,
    [ORDER_LINE_NUMBER]     [dbo].[N_C20]       NULL,
    [SHIPPING_DOCUMENT]     [dbo].[N_C50]       NULL,
    [ITEM_NO]               [dbo].[N_C20]       NULL,
    [SOLD_TO]               [dbo].[N_C20]       NULL,
    [SHIP_TO]               [dbo].[N_C20]       NULL,
    [SHIPPED_QUANTITY]      [dbo].[D_DEC12.2]   NULL,
    [SHIPPED_UOM]           [dbo].[N_C20]       NULL,
    [STATISTIC_QUANTITY]    [dbo].[D_DEC12.2]   NULL,
    [STATISTIC_UOM]         [dbo].[N_C20]       NULL,
    [QUANTITY]              [dbo].[D_DEC12.2]   NULL,
    [UOM]                   [dbo].[N_C20]       NULL,
    [SHIPPED_AMOUNT]        [dbo].[D_DEC15,4]   NULL,
    [LOCAL_AMOUNT]          [dbo].[D_DEC15,4]   NULL,
    [GROUP_AMOUNT]          [dbo].[D_DEC15,4]   NULL,
    [SHIPPED_CURRENCY]      [dbo].[N_CURRENCY]  NULL,
    [LOCAL_CURRENCY]        [dbo].[N_CURRENCY]  NULL,
    [LINE_DISCOUNT_AMOUNT]  [dbo].[D_DEC15,4]   NULL,
    [ORDER_DISCOUNT_AMOUNT] [dbo].[D_DEC15,4]   NULL,
    [LINE_BONUS_AMOUNT]     [dbo].[D_DEC15,4]   NULL,
    [BONUS_SHARE_AMOUNT]    [dbo].[D_DEC15,4]   NULL,
    [SALESPERSON_ID]        [dbo].[N_C20]       NULL,
    [SALESPERSON_NAME]      [dbo].[N_C100]      NULL,
    [KEEP_RECORD]           [dbo].[N_BOOLEAN_N] NULL,
    CONSTRAINT [PK_SA_ORDER_SNI] PRIMARY KEY CLUSTERED ([REC_ID] ASC)
);

