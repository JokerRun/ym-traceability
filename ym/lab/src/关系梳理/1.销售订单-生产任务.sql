select
    --
    ord.FBillNo as "订单号",
    wo.FBillNo  as "任务单号",
       wo.FSourceEntryID as "原单行号"
from AIS20131118110255.dbo.ICMO wo
         join  AIS20131118110255.dbo.SEOrder ord on wo.FOrderInterID = ord.FInterID