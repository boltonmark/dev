﻿CREATE view [dbo].[V_PU_SUPPLIER_BONUS_STEP]
as
select SUPPLIER_BONUS_ID,
       FROM_VALUE, TO_VALUE,
       BONUS_PCT, BONUS_PER_UNIT
from PU_SUPPLIER_BONUS_STEP