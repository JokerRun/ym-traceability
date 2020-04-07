select *
from MES14.dbo.M_Order mo
         inner join MES14.dbo.M_TaskReport mtr on mo.FBillNo = mtr.FBillNo
