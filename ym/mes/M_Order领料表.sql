select
       --
--        ord.FBillNo,
       pick.FXSbill,
       pick.FWorkNo,
       pick.FSourceBillNo,
       pick.FID,
       pick.FBillNo,
       pick.FStatus,
       pick.FNumber,
       pick.FName
from  MES14_bak.dbo.M_Order0319 pick
         join zj0730.dbo.SEOrder ord on pick.FXSbill = ord.FBillNo