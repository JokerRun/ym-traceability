DECLARE @dateStart date
DECLARE @dateEnd date
SET @dateStart = :dateStart
SET @dateEnd = :dateEnd


SELECT
    --销售订单（视图）
    ord.FBillNo       as "单据编号",
    ord.FEntryID      as "单据分录号",
    ord.FInterID      as "单据内码",
    ord.FNumber       as "产品长代码",
    ord.FItemID       as "产品名称",
    ord.Fauxqty       as "数量",
    ord.Fauxprice     as "单价",
    ord.Famount       as "金额",
    ord.FQty          as "基本单位数量",
    ord.FStockQty     as "基本单位出库数量",
    ord.FCheckerID    as "审核人",
    ord.FCheckFlag    as "审核标志",
    ord.FClosed       as "关闭标志",
    ord.FCommitDate   as "交货日期",
    ord.FBillerID     as "制单",
    ord.FCustID       as "购货单位",
    ord.Fdate         as "日期",
    ord.FDeptID       as "部门",
    ord.FShortNumber  as "产品短代码",
    ord.FSourceBillNo as "源单单号",
    ord.FUnitGroupID  as "基本单位",
    ord.FUnitID       as "单位",
    prod.FItemID      as "产品内码",
    prod.FNumber      as "产品代码",
    prod.FParentID    as "产品类代码",
    prod.FName        as "产品名称",
    prod.FNameEn      as "英文名称",
    prod.FFullName    as "全名",
    prod.FModel       as "规格型号",
    prod.FModelEn     as "英文规格",
    prod.FSource      as "来源",
    t2.FFileName      AS 文件名,
    t2.fdata          AS 访问链接
FROM dbo.vwICBill_32 as ord
         left join dbo.t_icitem as prod on ord.FNumber = prod.FNumber
         LEFT JOIN dbo.t_accessory AS t2 ON prod.FItemID = t2.FItemID
where ord.Fdate between @dateStart and @dateEnd
