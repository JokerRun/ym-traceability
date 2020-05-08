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
         left join LinkDischargeFlowCard LDFC on HFC.FFSDsb = LDFC.FFSDsb and HFC.FFSDno = LDFC.FFSDno
-- 素电流转卡-放电测试数据


-- 附件地址
drop table [dbo].[HubFile];
CREATE TABLE [dbo].[HubFile]
(
    [FItemID]      int                                    NULL,
    [FTypeID]      int                                    NULL,
    [FFileName]    varchar(250) COLLATE Chinese_PRC_CI_AS NULL,
    [FSaveAddress] varchar(250) COLLATE Chinese_PRC_CI_AS NULL
)
    ON [PRIMARY]
GO

UPDATE
    HubProductAttachment
SET HubProductAttachment.url=HubFile.FSaveAddress
FROM HubProductAttachment
         LEFT JOIN HubFile
                   ON HubProductAttachment.FItemID = HubFile.FItemID and
                      HubProductAttachment.FTypeID = HubFile.FTypeID;

-- 佳琪 - tmp_query
drop table ym.dbo.tmp_Query;
select bpo.[客户名称],
       bpo.[销售订单],
       bpo.[产品数量],
       bpo.[产品名称],
       max(bpo.[生产批次])                                                     as "生产批次",
       max(hcte.FText4)                                                    as "实测电压",
       max(hcte.FText5)                                                    as "放电模式",
       max(Cast(Convert(decimal(18, 2), hcte.fdecimal) as nvarchar) + 'V') as "客户要求",
       Convert(decimal(18, 2), ((case
                                     when ISNUMERIC(max(fdcs.capacity1)) = 1
                                         then Convert(decimal(18, 2), CAST(max(fdcs.capacity1) AS FLOAT))
                                     else 0
           end) +
                                (case
                                     when ISNUMERIC(max(fdcs.capacity2)) = 1
                                         then Convert(decimal(18, 2), CAST(max(fdcs.capacity2) AS FLOAT))
                                     else 0
                                    end) +
                                (case
                                     when ISNUMERIC(max(fdcs.capacity3)) = 1
                                         then Convert(decimal(18, 2), CAST(max(fdcs.capacity3) AS FLOAT))
                                     else 0
                                    end) +
                                (case
                                     when ISNUMERIC(max(fdcs.capacity4)) = 1
                                         then Convert(decimal(18, 2), CAST(max(fdcs.capacity4) AS FLOAT))
                                     else 0
                                    end) +
                                (case
                                     when ISNUMERIC(max(fdcs.capacity5)) = 1
                                         then Convert(decimal(18, 2), CAST(max(fdcs.capacity5) AS FLOAT))
                                     else 0
                                    end) +
                                (case
                                     when ISNUMERIC(max(fdcs.capacity6)) = 1
                                         then Convert(decimal(18, 2), CAST(max(fdcs.capacity6) AS FLOAT))
                                     else 0
                                    end) +
                                (case
                                     when ISNUMERIC(max(fdcs.capacity7)) = 1
                                         then Convert(decimal(18, 2), CAST(max(fdcs.capacity7) AS FLOAT))
                                     else 0
                                    end) +
                                (case
                                     when ISNUMERIC(max(fdcs.capacity8)) = 1
                                         then Convert(decimal(18, 2), CAST(max(fdcs.capacity8) AS FLOAT))
                                     else 0
                                    end) +
                                (case
                                     when ISNUMERIC(max(fdcs.capacity9)) = 1
                                         then Convert(decimal(18, 2), CAST(max(fdcs.capacity9) AS FLOAT))
                                     else 0
                                    end)
                                   ) / 9)                                  as "测试数据平均值",
       max(ha.url)                                                         as "质量计划书",
       max(bpo.[放电项目单号])                                                   as "放电单",
       max(bpo.[素电品号])                                                     as "素电品号"
into tmp_Query
from BizTracePathOne bpo
         left join HubCommissionTest hct on bpo.[委托测试单号] = hct.FBillNo
         left join HubCommissionTestEntry hcte on hct.FID = hcte.FID
         left join fd_cs fdcs on fdcs.PrjKey = bpo.[放电项目单号]
         left join HubProductAttachment ha on ha.FNumber = bpo.[产品号]
group by bpo.[客户名称], bpo.[销售订单], bpo.[产品数量], bpo.[产品名称]




-- 调整 - tmp_query
drop table ym.dbo.tmp_Query;
select bpo.*,
       hcte.FText4   as "实测电压",
       hcte.FText5   as "放电模式",
       hcte.fdecimal as "客户要求",
       fdcs.capacity1             as "测试数据平均值",
       ha.url        as "质量计划书",
       bpo.[放电项目单号]  as "放电单",
       bpo.[素电品号]    as "素电品号"
into tmp_Query
from BizTracePathOne bpo
         left join HubCommissionTest hct on bpo.[委托测试单号] = hct.FBillNo
         left join HubCommissionTestEntry hcte on hct.FID = hcte.FID
         left join fd_cs fdcs on fdcs.PrjKey = bpo.[放电项目单号]
         left join HubProductAttachment ha on ha.FNumber = bpo.[产品号]
-- group by bpo.[客户名称], bpo.[销售订单], bpo.[产品数量], bpo.[产品名称]

