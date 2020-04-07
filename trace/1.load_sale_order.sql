DECLARE @dateStart date
DECLARE @dateEnd date
SET @dateStart=:dateStart
SET @dateEnd=:dateEnd


SELECT
    --销售订单（视图）
    FBillNo            as "FBillNo",
    FEntryID           as "FEntryID",
    FInterID           as "FInterID",
    FNumber            as "FNumber",
    FItemID            as "FItemID",
    Fauxqty            as "Fauxqty",
    Fauxprice          as "Fauxprice",
    Famount            as "Famount",
    FQty               as "FQty",
    FStockQty          as "FStockQty",
    FCheckerID         as "FCheckerID",
    FCheckFlag         as "FCheckFlag",
    FClosed            as "FClosed",
    FCommitDate        as "FCommitDate",
    FBillerID          as "FBillerID",
    FCustID            as "FCustID",
    Fdate              as "Fdate",
    FDeptID            as "FDeptID",
    FShortNumber       as "FShortNumber",
    FSourceBillNo      as "FSourceBillNo",
    FUnitGroupID       as "FUnitGroupID",
    FUnitID            as "FUnitID"
FROM dbo.vwICBill_32
where  Fdate between @dateStart and @dateEnd
