﻿




create VIEW [dbo].[V_SA_ITEM_CATEGORY_20161216_delete]
AS
SELECT     ITEM_CATEGORY_ID, ITEM_CATEGORY_NAME, ITEM_PARENT_ID, 
           ITEM_SORTSTRING
FROM         dbo.SA_ITEM_CATEGORY