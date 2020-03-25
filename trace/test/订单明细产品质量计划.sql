select
       --订单明细产品质量计划
       pqp.FNumber as 品号,
       pqp.FName as 品名,
       pqp.FFileName as 文件名,
       pqp.FFileUrl as url,
       SO.FBillNo as 订单号,
       SO.FEntryID as 明细条目,
       SO.Famount as 金额,
       SO.FQty as 数量,
       SO.FCustID as 客户,
       SO.Fdate as 日期,
       SO.FUnitID as 单位
from SaleOrder SO
         left join ProductQualityPlan pqp on pqp.FNumber = SO.FNumber;