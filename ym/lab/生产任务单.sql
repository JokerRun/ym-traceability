select
    --
    ord.FBillNo as "订单号",
    wo.FBillNo  as "任务单号",
       wo.FSourceBillNo as "原单",
       wo.FSourceEntryID as "原单行号"
from dbo.ICMO wo
         join dbo.SEOrder ord on wo.FOrderInterID = ord.FInterID