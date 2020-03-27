select
       ord.FBillNo,
       pick.FID,
       pick.FBillNo,
       pick.FStatus,
       pick.FNumber,
       pick.FName,
       pick.FWorkNo,
       pick.FXSbill
from zj0730.dbo.SEOrder ord  join  MES14_bak.dbo.M_Order0319 pick on pick.FXSbill=ord.FBillNo