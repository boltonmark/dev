﻿CREATE TABLE [dbo].[SA_CUSTOMER] (
    [SYSTEM_ID]          [dbo].[D_INT]  NOT NULL,
    [CUSTOMER_NO]        [dbo].[N_C50]  NOT NULL,
    [CUSTOMER_NAME]      [dbo].[N_C100] NULL,
    [CUSTOMER_ADDRESS_1] [dbo].[N_C100] NULL,
    [CUSTOMER_ADDRESS_2] [dbo].[N_C100] NULL,
    [CUSTOMER_ADDRESS_3] [dbo].[N_C100] NULL,
    [CUSTOMER_ZIPCODE]   [dbo].[N_C100] NULL,
    [CUSTOMER_CITY]      [dbo].[N_C100] NULL,
    [CUSTOMER_COUNTRY]   [dbo].[N_C100] NULL,
    [CUSTOMER_VAT_NO]    [dbo].[N_C50]  NULL,
    [CUSTOMER_TYPE_ID]   [dbo].[D_INT]  NULL,
    [CUSTOMER_TYPE]      [dbo].[N_C100] NULL,
    [CUSTOMER_GROUP_1]   [dbo].[N_C100] NULL,
    [CUSTOMER_GROUP_2]   [dbo].[N_C100] NULL,
    [CUSTOMER_GROUP_3]   [dbo].[N_C100] NULL,
    [CUSTOMER_GROUP_4]   [dbo].[N_C100] NULL,
    [CUSTOMER_GROUP_5]   [dbo].[N_C100] NULL,
    [CREATE_BY]          [dbo].[N_USER] NULL,
    [CREATE_DATE]        [dbo].[D_DATE] NULL,
    [UPDATE_BY]          [dbo].[N_USER] NULL,
    [UPDATE_DATE]        [dbo].[D_DATE] NULL,
    CONSTRAINT [PK_SA_CUSTOMER] PRIMARY KEY CLUSTERED ([SYSTEM_ID] ASC, [CUSTOMER_NO] ASC)
);

