-- 产品表
DROP TABLE  zj0730.dbo.HubProduct ;
select FNumber,
       FItemID,
       FName,
       FFullName
into zj0730.dbo.HubProduct
from AIS20131118110255.dbo.t_ICItem;

-- 产品附件表
drop table zj0730.dbo.HubProductAttachment;

select prod.FNumber,
       acce.FFileName,
       acce.FFileName as url
into zj0730.dbo.HubProductAttachment
from AIS20131118110255.dbo.t_icitem as prod
         LEFT JOIN AIS20131118110255.dbo.t_accessory AS acce ON prod.FItemID = acce.FItemID;

-- 客户表
drop table zj0730.dbo.HubCustomer;

select FNumber, FName, FParentID
into zj0730.dbo.HubCustomer
from AIS20131118110255.dbo.t_Organization;


-- 销售订单
drop table zj0730.dbo.HubSaleOrder;

select FBillNo, org.FName, FDate
into zj0730.dbo.HubSaleOrder
from AIS20131118110255.dbo.SEOrder so
         left join AIS20131118110255.dbo.t_Organization org
                   on so.FCustID = org.FItemID;


-- 销售订单明细
drop table zj0730.dbo.LinkSaleOrder;

select so.FBillNo, soe.FEntryID, prod.FNumber, soe.FQty
into zj0730.dbo.LinkSaleOrder
from AIS20131118110255.dbo.SEOrder so
         left join AIS20131118110255.dbo.SEOrderEntry soe on so.FInterID = soe.FInterID
         left join AIS20131118110255.dbo.t_ICItem prod
                   on soe.FItemID = prod.FItemID;


-- 生产任务
drop table zj0730.dbo.HubOrderProduceTask;

select icmo.FBillNo,
                ord.FBillNo  as FSourceBillNo,
                icmo.FSourceEntryID,
                prod.FNumber as FNumber,
                icmo.FQty,
                icmo.FCheckDate
into zj0730.dbo.HubOrderProduceTask
from AIS20131118110255.dbo.ICMO icmo
         left join AIS20131118110255.dbo.SEOrder ord on icmo.FOrderInterID = ord.FInterID
         left join AIS20131118110255.dbo.t_ICItem prod on icmo.FItemID = prod.FItemID


-- 工单
drop table zj0730.dbo.HubWorkOrder;

select FID,
       FBillNo,
       FStatus,
       FSourceBillNo,
       FTaskQty,
       FPQty,
       FTaskCellNumber,
       FTaskCellName,
       FTaskDate,
       FNumber,
       FName,
       FWorkNo,
       FDept,
       FQty,
       FXSbill
into zj0730.dbo.HubWorkOrder
from MES14.dbo.M_Order mo;


-- 素电工单-流转卡
drop table zj0730.dbo.HubFlowCard;

select mo.FBillNo,
       mo.FNumber,
       mfc.FFlowCardNo,
       mfc.FTaskBillNo,
       mfc.FBatchNO,
       mfc.FFSDno,
       mfc.FFSDsb
into zj0730.dbo.HubFlowCard
from MES14.dbo.M_Order mo
         inner join MES14.dbo.M_FlowCard mfc on mo.FBillNo = mfc.FTaskBillNo
where FNumber like 'P.%'
;

-- 委托测试单-流转卡
drop table zj0730.dbo.HubCommissionTest;

select tbos.FBillNo,
       tbos.FText8,
       mfc.FTaskBillNo,
       mfc.FFlowCardNo,
       mfc.FBatchNO,
       mfc.FFSDno,
       mfc.FFSDsb
into zj0730.dbo.HubCommissionTest
from AIS20131118110255.dbo.t_BOS200000027 tbos
         left join MES14.dbo.M_FlowCard mfc on mfc.FFlowCardNo = tbos.FText8;

