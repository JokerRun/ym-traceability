select so.FBillNo      as so_FBillNo,   --销售订单号
       soe.FEntryID    as soe_FEntryID, -- 订单明细条目
       soe.FItemID     as soe_FItemID,  --订单明细产品内码
       soe.FQty        as soe_FQty,     --订单明细数量
       prod.FNumber    as prod_FNumber, --订单明细产品号
       prod.FName      as prod_FName,   --订单明细产品号
       icmo.FBillNo    as icmo_FBillNo, --ERP生产任务单号
       mo.FWorkNo      as mo_FWorkNo,   --MES工单_生产任务单号
       mo.FSourceBillNo as mo_FSourceBillNo, --MES工单_源单号
       mo.FNumber      as mo_FNumber, --MES工单_生产品号
       mo.FName        as mo_FName,  --MES_工单生产品名
       mo.FBillNo      as mo_FBillNo, --MES工单_派工单号
       mtr.FBillNo     as mtr_FBillNo, --上料单_派工单号
       mtr.FID         as mtr_FID,--上料单_上料单内码
       mtrc.FReportID  as mtrc_FReportID,--上料明细_上料单内码
       mtrc.FID        as mtrc_FID,--上料明细_内码
       mtrc.FItemID    as mtrc_FItemID,--上料明细_上料品号
       mtrc.FCode      as mtrc_FCode,--上料明细_上料产品条码
       mfl.FFlowCardNo as mfl_FFlowCardNo,--流转卡_产品条码
       mfl.FFSDno      as mfl_FFSDno,--流转卡_生产批次
       mfl.FFSDsb      as mfl_FFSDsb --流转卡_生产设备
from AIS20131118110255.dbo.SEOrder so
         left join AIS20131118110255.dbo.SEOrderEntry soe on so.FInterID = soe.FInterID
         left join AIS20131118110255.dbo.t_ICItem prod on prod.FItemID = soe.FItemID
         left join AIS20131118110255.dbo.ICMO icmo on icmo.FOrderInterID = soe.FInterID and icmo.FSourceEntryID = soe.FEntryID
         left join MES14.dbo.M_Order mo on mo.FWorkNo = icmo.FBillNo
         left join MES14.dbo.M_TaskReport mtr on mtr.FBillNo = mo.FBillNo
         left join MES14.dbo.M_TaskReportCode mtrc on mtr.FID = mtrc.FReportID
         left join MES14.dbo.M_FlowCard mfl on mfl.FFlowCardNo = mtrc.FCode
where 1 = 1
  and so.FBillNo = 'XSDD2018051618968' --指定订单号
  and mo.FNumber like 'Z%'  --MES工单.目标产品号(Z开头为成品)
--   and mo.FBillNo <> ''  --MES工单.派工单号不为空
  and mtrc.FItemID like 'P%' -- 上料明细.用料品号(P开头，限定上料明细为素电)


--
select FBillNo,FCode,FItemID
from MES14.dbo.M_TaskReport mtr left join MES14.dbo.M_TaskReportCode mtrc
    on mtr.FID =mtrc.FReportID
where FCode='A1804000257'

;