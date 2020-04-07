select icmo.fbillno as icmo_fbillno,
       mo.FWorkNo as mo_FWorkNo,
       mo.FSourceBillNo as mo_FSourceBillNo,
       mo.FSourceEntryID as mo_FSourceEntryID,
       mo.FBillNo as mo_FBillNo
from dbo.ICMO icmo
         inner join MES14.dbo.M_Order mo on icmo.fbillno = mo.FWorkNo

