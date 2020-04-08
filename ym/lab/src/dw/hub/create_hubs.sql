-- 产品表
DROP TABLE zj0730.dbo.HubProduct;
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

select FBillNo, org.FNumber, FDate
into zj0730.dbo.HubSaleOrder
from AIS20131118110255.dbo.SEOrder so
         left join AIS20131118110255.dbo.t_Organization org
                   on so.FCustID = org.FItemID;


-- 销售订单明细
drop table zj0730.dbo.LinkSaleOrder;

select so.FBillNo, soe.FEntryID, prod.FNumber, soe.FQty, so.FDate
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
SET IDENTITY_INSERT [dbo].HubWorkOrder ON;


drop table zj0730.dbo.HubProductFeeding;
-- 上料明细
select mtrc.FID,
       mtrc.FReportID,
       mtr.FDate,
       mo.FBillNo,
       mo.FWorkNo,
       mo.FName,
       mo.FNumber,
       mtrc.FItemID,
       mtrc.FCode,
       mtrc.FBatch,
       mtrc.FQty
into HubProductFeeding
from MES14.dbo.M_TaskReport mtr
         left join MES14.dbo.M_TaskReportCode mtrc on mtr.FID = mtrc.FReportID
         left join MES14.dbo.M_Order mo on mo.FBillNo = mtr.FBillNo and mo.FBillNo <> ''
where mo.FNumber like 'Z%'
  and mtrc.FItemID like 'P%'


-- 素电工单-流转卡
drop table zj0730.dbo.HubFlowCard;

select
       mo.FBillNo,
       mo.FNumber,
       mfc.FFlowCardNo,
       mfc.FTaskBillNo,
       mfc.FBatchNO,
       mfc.FFSDno,
       mfc.FFSDsb,
       mfc.FCreateDate
into zj0730.dbo.HubFlowCard
from MES14.dbo.M_Order mo
         inner join MES14.dbo.M_FlowCard mfc on mo.FBillNo = mfc.FTaskBillNo
-- where FNumber like 'P.%';

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


-- 关系问题:  【MES素电流转卡-> 工单-> 生产任务单】 与 【销售订单-> 生产任务单】完全匹配不上
select mo.FID, mo.FWorkNo, mfc.FTaskBillNo, mfc.FFlowCardNo
from MES14.dbo.M_FlowCard mfc
         inner join MES14.dbo.M_Order mo on mfc.FTaskBillNo = mo.FBillNo
where mo.FNumber like 'P%'
  and mo.FWorkNo in
      (select icmo.FBillNo
       from AIS20131118110255.dbo.SEOrder ord
                left join AIS20131118110255.dbo.ICMO icmo on ord.FInterID = icmo.FOrderInterID)

-- 销售订单对应的产品号都不是 Z开头？
select top 1000 hp.FName
from AIS20131118110255.dbo.SEOrder hso -- 销售订单
         left join AIS20131118110255.dbo.t_Organization HC on hso.FCustID = HC.FItemID -- 销售订单-客户表
         left join AIS20131118110255.dbo.SEOrderEntry LSO on hso.FInterID = LSO.FInterID -- 销售订单-销售明细
         left join AIS20131118110255.dbo.t_ICItem hp on lso.FItemID = hp.FItemID --销售明细-产品表
         where hp.FNumber like 'Z%';

select FItemID,
       FModel,
       FName,
       FHelpCode,
       FDeleted,
       FShortNumber,
       FNumber,
       FFullName
from AIS20131118110255.dbo.t_ICItem
where FNumber like 'C%';

