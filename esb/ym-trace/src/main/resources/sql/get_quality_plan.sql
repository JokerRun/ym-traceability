select
       --订单明细产品质量计划
       pqp.FNumber   as 品号,
       pqp.FName     as 品名,
       pqp.FFileName as 文件名,
       pqp.FFileUrl  as url,
       so.FBillNo    as 订单号,
       so.FEntryID   as 明细条目,
       so.Famount    as 金额,
       so.FQty       as 数量,
       so.FCustID    as 客户,
       so.Fdate      as 日期,
       so.FUnitID    as 单位
from SaleOrder so
         left join ProductQualityPlan pqp on pqp.FNumber = so.FNumber

where so.FBillNo = :billNo