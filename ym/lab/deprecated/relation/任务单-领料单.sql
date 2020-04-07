select
    --
    wo.FBillNo    as "任务单",
    pick.FBillNo  as "领料单",
    pick.FItemID  as "产品名称",
    pick.FBatchNo as "批号",
    pick.FNote    as "备注",
    pick.FNumber  as "产品长代码"
from dbo.ICMO wo
         join dbo.vwICBill_11 pick on wo.FBillNo = pick.FSourceBillNo
where pick.FNumber like 'P%';

