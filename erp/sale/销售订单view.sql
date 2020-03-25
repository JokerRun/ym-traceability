DECLARE @dateStart date
DECLARE @dateEnd date
SET @dateStart=:dateStart
SET @dateEnd=:dateEnd


SELECT
    --销售订单（视图）
    FBillNo            as "单据编号",
    FEntryID           as "单据分录号",
    FInterID           as "单据内码",
    FNumber            as "产品长代码",
    FItemID            as "产品名称",
    Fauxqty            as "数量",
    Fauxprice          as "单价",
    Famount            as "金额",
    FQty               as "基本单位数量",
    FStockQty          as "基本单位出库数量",
    FCheckerID         as "审核人",
    FCheckFlag         as "审核标志",
    FClosed            as "关闭标志",
    FCommitDate        as "交货日期",
    FBillerID          as "制单",
    FCustID            as "购货单位",
    Fdate              as "日期",
    FDeptID            as "部门",
    FShortNumber       as "产品短代码",
    FSourceBillNo      as "源单单号",
    FUnitGroupID       as "基本单位",
    FUnitID            as "单位"
FROM dbo.vwICBill_32
where  Fdate between @dateStart and @dateEnd
