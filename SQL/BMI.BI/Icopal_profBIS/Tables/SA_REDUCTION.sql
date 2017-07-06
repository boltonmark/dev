﻿CREATE TABLE [dbo].[SA_REDUCTION] (
    [REDUCTION_ID]         [dbo].[D_INT]      NOT NULL,
    [SBU]                  [dbo].[N_SBU]      NOT NULL,
    [REDUCTION_NAME]       [dbo].[N_C20]      NOT NULL,
    [START_DATE]           [dbo].[D_DATE]     NOT NULL,
    [END_DATE]             [dbo].[D_DATE]     NULL,
    [REDUCTION_AMOUNT]     [dbo].[D_DEC12.2]  NULL,
    [REDECTION_CURRENCY]   [dbo].[N_CURRENCY] NULL,
    [REDUCTION_PERCENT]    [dbo].[D_DEC11.4]  NULL,
    [CUSTOMER_CATEGORY_ID] [dbo].[D_INT]      NULL,
    [CUSTOMER_NO]          [dbo].[N_C20]      NULL,
    [ITEM_NO]              [dbo].[N_C20]      NULL,
    [ITEM_CATEGORY_ID]     [dbo].[D_INT]      NULL,
    [CUSTOMER_GROUP_1]     [dbo].[N_C50]      NULL,
    [CUSTOMER_GROUP_2]     [dbo].[N_C50]      NULL,
    [CUSTOMER_GROUP_3]     [dbo].[N_C50]      NULL,
    [CUSTOMER_GROUP_4]     [dbo].[N_C50]      NULL,
    [CUSTOMER_GROUP_5]     [dbo].[N_C50]      NULL,
    [ITEM_GROUP_1]         [dbo].[N_C50]      NULL,
    [ITEM_GROUP_2]         [dbo].[N_C50]      NULL,
    [ITEM_GROUP_3]         [dbo].[N_C50]      NULL,
    [ITEM_GROUP_4]         [dbo].[N_C50]      NULL,
    [ITEM_GROUP_5]         [dbo].[N_C50]      NULL,
    [CREATE_BY]            [dbo].[N_USER]     NULL,
    [CREATE_DATE]          [dbo].[D_DATE]     NULL,
    [UPDATE_BY]            [dbo].[N_USER]     NULL,
    [UPDATE_DATE]          [dbo].[D_DATE]     NULL,
    CONSTRAINT [PK_SA_REDUCTION_1] PRIMARY KEY CLUSTERED ([REDUCTION_ID] ASC)
);

