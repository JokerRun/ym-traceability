select top 10 ib.FBillNo  as "产品入库单",
               ib.FEntryID as "产品入库单条目序号",
               ib.FBatchNo as "批次",
               ib.FNumber  as "产品号",
               ib.FItemID  as "产品名称",
               wo.FBillNo  as "生产任务单"
from dbo.ICMO wo
         join dbo.vwICBill_2 ib on wo.FBillNo = ib.FSourceBillNo;