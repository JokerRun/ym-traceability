       obe.FEntryID as "出库单条目序号",
       ord.FBillNo  as "销售单号"
from dbo.ICStockBill ob (NOLOCK)
         Left Join dbo.ICStockBillEntry obe (NOLOCK) on obe.FInterID = ob.FInterID
         join dbo.SEOrder ord on obe.FSourceBillNo = ord.FBillNo;
