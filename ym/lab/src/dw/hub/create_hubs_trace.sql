-- 放电项目流转卡 
insert into ym.dbo.LinkDischargeFlowCard
select hfc.FFlowCardNo, hfc.FFSDsb, hfc.FFSDno, fc.PrjKey, fc.dcph, fc.dcxh
from ym.dbo.fd_cs fc
         inner join HubFlowCard hfc on fc.dcph = hfc.FFlowCardNo
where fc.PrjKey not in (select ldf.PrjKey from ym.dbo.LinkDischargeFlowCard ldf)
  and hfc.FFSDno is not null
  and hfc.FFSDsb is not null;


-- 追溯路径
drop table ym.dbo.BizTracePathOne;
select hso.FBillNo     as 销售订单,
       hc.FName        as 客户名称,
       hp.FNumber      as 产品号,
       hp.FName        as 产品名称,
       lso.FQty        as 产品数量,
       hopt.FBillNo    as 生产任务号,
       hpf.FNumber     as 生产产品号,
       hpf.FWorkNo     as 工单号,
       hpf.FItemID     as 上料品号,
       hpf.FBillNo     as 派工单号,
       hfc.FFlowCardNo as 素电条码,
       hfc.FNumber     as 素电品号,
       hfc.FFSDno      as 生产批次,
       hfc.FFSDsb      as 生产设备,
       hct.FBillNo     as 委托测试单号,
       ldfc.PrjKey     as 放电项目单号
into BizTracePathOne
from HubSaleOrder hso -- 销售订单
         left join HubCustomer HC on hso.FNumber = HC.FNumber -- 销售订单-客户表
         left join LinkSaleOrder LSO on hso.FBillNo = LSO.FBillNo -- 销售订单-销售明细
         left join HubProduct hp on lso.FNumber = hp.FNumber --销售明细-产品表
         left join HubOrderProduceTask hopt
                   on hso.FBillNo = hopt.FSourceBillNo and lso.FEntryID = hopt.FSourceEntryID -- 销售订单明细-生产任务
         left join HubProductFeeding hpf on hopt.FBillNo = hpf.FWorkNo -- 成品生产工单-半成品上料
--          left join HubWorkOrder hwo on hopt.FBillNo = hwo.FWorkNo -- 生产任务-工单
         left join HubFlowCard hfc on hpf.FCode = hfc.FFlowCardNo -- 工单-素电流转卡
         left join HubCommissionTest HCT on HFC.FFSDsb = HCT.FFSDsb and HFC.FFSDno = HCT.FFSDno -- 素电流转卡-委托测试单
         left join LinkDischargeFlowCard LDFC on HFC.FFSDsb = LDFC.FFSDsb and HFC.FFSDno = LDFC.FFSDno -- 素电流转卡-放电测试数据
