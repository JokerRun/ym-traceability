-- 产品表
select FNumber,
       FName,
       FFullName
from AIS20131118110255.dbo.t_ICItem;

-- 产品附件表
select
    -- 产品表
    prod.FNumber,
    acce.FFileName,
    acce.FFileName as url
from AIS20131118110255.dbo.t_icitem as prod
         LEFT JOIN AIS20131118110255.dbo.t_accessory AS acce ON prod.FItemID = acce.FItemID;

-- 客户表
select FNumber, FName, FParentID
from AIS20131118110255.dbo.t_Organization;


-- 销售订单
select FBillNo, org.FName, FDate
from AIS20131118110255.dbo.SEOrder so
         left join AIS20131118110255.dbo.t_Organization org
                   on so.FCustID = org.FItemID;


-- 销售订单明细
select so.FBillNo, soe.FEntryID, prod.FNumber, soe.FQty
from AIS20131118110255.dbo.SEOrder so
         left join AIS20131118110255.dbo.SEOrderEntry soe on so.FInterID = soe.FInterID
         left join AIS20131118110255.dbo.t_ICItem prod
                   on soe.FItemID = prod.FItemID;

-- 生产任务
select icmo.FBillNo,
       ord.FBillNo as FSourceBillNo,
       icmo.FSourceEntryID,
       prod.FNumber as FNumber,
       icmo.FQty,
       icmo.FCheckDate
from AIS20131118110255.dbo.ICMO icmo
         left join  AIS20131118110255.dbo.SEOrder ord on icmo.FOrderInterID = ord.FInterID
    left join AIS20131118110255.dbo.t_ICItem prod on icmo.FItemID= prod.FItemID

-- 工单
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
from MES14.dbo.M_Order mo

-- 素电工单-流转卡
select mo.FBillNo,
       mo.FNumber,
       mfc.FFlowCardNo,
       mfc.FTaskBillNo,
       mfc.FBatchNO,
       mfc.FFSDno,
       mfc.FFSDsb
from MES14.dbo.M_Order mo
         inner join MES14.dbo.M_FlowCard mfc on mo.FBillNo = mfc.FTaskBillNo
where FNumber like 'P.%'
;

-- select count(*) as cnt
-- from dbo.M_FlowCard
-- group by M_FlowCard.FTaskBillNo
-- order by cnt desc

-- 委托测试单-流转卡
select mfc.FTaskBillNo,
       mfc.FFlowCardNo,
       mfc.FBatchNO,
       mfc.FFSDno,
       mfc.FFSDsb
from MES14.dbo.M_FlowCard mfc
         inner join AIS20131118110255.dbo.t_BOS200000027 tbos on mfc.FFlowCardNo = tbos.FText8;




-- 上料明细
select
       tr.FBillNo,
       tr.FQty as totalQty,
       trc.FItemID,
       trc.FCode,
       trc.FQty,
       tr.FDate
from MES14.dbo.M_TaskReport tr left join MES14.dbo.M_TaskReportCode trc on trc.FReportID=tr.FID;
