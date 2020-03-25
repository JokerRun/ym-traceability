--  转发金蝶K3wise常用数据库表
--
-- 在后台数据库ICClassType表中，字段FID<0的是老单，FID>0的是新单。
----------------系统设置------------------------
SELECT * FROM T_TableDescription WHERE FDescription LIKE '%单据%'; --系统表
SELECT * FROM T_TableDescription WHERE FDescription LIKE '%物料%'; --系统表
SELECT * FROM T_TableDescription WHERE FTableName LIKE '%ICStockBill%'; --系统表
SELECT * FROM T_TableDescription WHERE FTableName LIKE '%t_icitem%'; --系统表
SELECT * FROM T_TableDescription WHERE FTableID=17; --系统表
SELECT * FROM T_FieldDescription WHERE FDescription LIKE '%批号%'; --字段表
SELECT * FROM T_FieldDescription WHERE FFieldName LIKE '%FBatchNo%'; --字段表
SELECT * FROM T_FieldDescription WHERE FTableID=17; --字段表
SELECT * FROM ICClassType where  FTableName like '%item%'--WHERE FName_CHS LIKE '%供货%'; --用此表基本上可以查询到所有的表
SELECT * FROM T_Log order by FLogID desc ; --日志表
SELECT * FROM ICTemplate; --字段模板表头
SELECT * FROM ICTemplateEntry; --字段模板分录
SELECT * FROM ICListTemplate; --序时薄模板
SELECT * FROM T_UserProfile; --用户方案表
-----------------物料设置--------------------------
SELECT * FROM  T_ICItem ;--物料表物料属性 1- 外购；2- 自制（特性配置）；3-委外加工；4-；5-虚拟件；6-特征类；7- 配置类；8-规划类；9-组装件；
SELECT * FROM T_ICItemCore ;--核心表，通过FItemID与其它表相关联
SELECT * FROM T_ICItemBase ;--基本资料表，包含了规则型号，单位等
SELECT * FROM T_ICItemMaterial ;--物流资料表，包含了成本计价方法，核算会计科目
SELECT * FROM T_ICItemPlan ;--计划资料表，包含了计划策略和工艺路线等
SELECT * FROM T_ICItemStandard ;--标准资料表，包含了标准成本，工时等
SELECT * FROM T_ICItemDesign ;--设计资料表，包含了净重，毛重，长宽高等
SELECT * FROM T_ICItemQuality ;--质量资料表，检验资料
SELECT * FROM T_Base_ICItemEntrance ;--进出口资料表，英文名称，HS编码等
SELECT * FROM T_ICItemCustom ;--物料所有自定义的字段表
------------------供应链设置-----------------------
SELECT * FROM ICStockBill --所有出入库单表头 其中:ftrantype值表示单据类型如下：1-采购入库 10-其他入库 21-销售出库 29-其他出库 41-调拨单 100-成本调整单
SELECT * FROM ICStockBillEntry --所有出入库单表体 表头与表体用finterid关联
SELECT * FROM ICTransactionType --出入库报表
SELECT * FROM ICInventory --实仓库存表 即时存货表
SELECT * FROM POInventory --虚仓库存表
SELECT * FROM ICBal --存货余额表
SELECT * FROM ICInvBal --库房存货余额表
SELECT * FROM ICInvInitial --存货初始数据表
SELECT * FROM ICTransType --仓存管理 单据类型表
SELECT * FROM ICSale --销售发票表头
SELECT * FROM ICSaleEntry --销售发票表体
SELECT * FROM vwICBill_43 --销售发票（视图）
SELECT * FROM SEOrder --销售订单表头
SELECT * FROM SEOrderEntry --销售订单表体 表头与表体用finterid关联
SELECT * FROM vwICBill_32 --销售订单（视图）
SELECT * FROM PORFQ --销售报价表头
SELECT * FROM PORFQEntry --销售报价表体
SELECT * FROM vwICBill_35 --销售报价单（视图）
SELECT * FROM vwICBill_8 --销售出库（视图）

SELECT a.*,ISNULL(b.FTable,'') AS FTable,ISNULL(e.FFieldName,'') as FieldName FROM t_BillCodeRule a
LEFT JOIN t_Option e ON a.FProjectID=e.FProjectID AND a.FFormatIndex=e.FID
LEFT OUTER JOIN t_CheckProject b ON a.FBillType=b.FBillTypeID AND a.FProjectval=b.FField
-- WHERE a.FBillTypeiID = '81' ORDER BY a.FClassIndex
SELECT FBillTypeID,FFormatChar,FProjectVal,FNumMax FROM t_BillCodeBy
WHERE FBillTypeID = '81' AND FFormatChar='1412' AND FProjectVal='yymm|'
UPDATE t_BillCodeBy SET FNumMax=10 WHERE FBillTypeID = '81' AND FFormatChar='1410' AND FProjectVal='yymm|'
SELECT * FROM t_Option --单据编码格式
SELECT * FROM t_BillCodeBy WHERE FBillTypeID = '81' --销售订单每期编号详情
SELECT * FROM t_BillCodeRule WHERE FbilltypeID='81' --销售订单编号的编码规则
SELECT * FROM t_CheckProject
SELECT * FROM ICPurBill --采购发票表头
SELECT * FROM ICPurEntry --采购发票表体
SELECT * FROM vwICBill_42 --采购发票（视图）
SELECT * FROM POOrder --采购订单表头
SELECT * FROM POOrderEntry --采购订单表体
SELECT * FROM vwICBill_26 --采购订单（视图）
SELECT * FROM POrequest --采购申请单表头
SELECT * FROM POrequestentry --采购申请单表体 表头与表体用finterid关联
SELECT * FROM vwICBill_25 --采购申请单（视图）
SELECT * FROM vwICBill_1 --采购入库（视图）
SELECT * FROM T_RP_NewReceiveBill --收款单
SELECT * FROM T_RP_Contact --应收、应付往来表
SELECT * FROM T_RP_NewCheckInfo --核销日志 核销业务详细记录。FRP= 1-应收 ：FRP = 0-应付
SELECT * FROM T_Rp_CheckDetail --核销明细
SELECT * FROM T_RP_ContactBal -- 往来余额表 FRP= 1-应收 ：FRP = 0-应付
SELECT * FROM ICItemMapping --供货信息表
SELECT * FROM T_supplyentry --报价表
-----------------生产管理---------------------------
SELECT * FROM ICmo --生产任务单
SELECT * FROM PPBom --生产投料单
SELECT * FROM ICSubContract --委外订单表头
SELECT * FROM ICSubContractEntry --委外订单表体 表头与表体用finterid关联 -----------------财务会计----------------------------
SELECT * FROM T_Account --科目表
SELECT * FROM T_Balance --科目余额表
SELECT * FROM T_Voucher --凭证表
SELECT * FROM T_VoucherGroup --凭证字
SELECT * FROM T_VoucherEntry --凭证分录表
SELECT * FROM T_VoucherExp --凭证摘要表
SELECT * FROM T_ItemPropDesc --核算项目附表信息描述表
SELECT * FROM T_ItemDetailV --核算项目使用详情纵表
SELECT * FROM T_ItemDetail --核算项目使用详情横表
SELECT * FROM T_RPContract WHERE FContractNO='2014079' --合同应收
SELECT * FROM t_RPContractScheme WHERE FContractid=1546 --收款计划明细表
SELECT FPeriod,FYear FROM T_PeriodDate WHERE '2008-02-29'>=FStartDate and '2008-02-29'<=FEndDate--年份、帐期
 SELECT * FROM T_Currency --币别                                                                                                              --科目挂核算项目
SELECT a.FAccountID,a.FNumber FAccountNumber,a.FName FAccountName,i.FItemClassID,i.FNumber FItemClassNumber,i.FName FItemClassName,CASE ai.FItemID WHEN -1 THEN 1 ELSE 0 END FBalChecked  FROM t_Account a,t_ItemClass i,t_ItemDetailV ai WHERE a.FDetailID = ai.FDetailID AND ai.FItemClassID = i.FItemClassID AND ai.FItemID IN(-1,-2) ORDER BY a.FAccountID, i.FNumber

--BOS单据模板信息：
--单据整体属性表
SELECT * FROM icclasstype WHERE FName_CHS LIKE
'%费用报销单%'
--单据体属性表
SELECT * FROM ICClassTypeEntry
WHERE  FParentID=1000050
--单据字段模板信息表
SELECT * FROM ICClassTableInfo WHERE FClassTypeID=1000050

--单据转换流程模板信息：
--单据转换流程整体信息表
SELECT * FROM ICClassLink
--转换流程中字段对应关系表
SELECT * FROM
ICClassLinkEntry
--钩稽关系中控制字段、关闭字段、控件字段信息表
SELECT * FROM ICClassLinkCommit

--单据转换流程在BOS集成开发工具里的显示与布局信息：
--单据转换流程名称信息表
SELECT * FROM
ICClassWorkFlow
--单据转换流程中单据的位置信息表
SELECT * FROM
ICClassWorkFlowBill
--单据转换流程中两个单据之间的连线信息表
SELECT * FROM ICClassWorkFlowJoin

--审批流程设计时的模板信息：
--审批流整体信息表
SELECT * FROM ICClassMCTemplate
--审批流的流程节点、转换级次及其属性的明细信息表
SELECT * FROM ICClassMCTableInfo

--审核记录信息表：ICClassMCRecord+单据类型ID
--例如费用报销单ID为1000050，那么它的审核记录表就是ICClassMCRecord1000050
SELECT * FROM
ICClassMCRecord1000050
----审核状态信息表：ICClassMCStatus+单据类型ID
----例如费用报销单ID为1000050，那么它的审核记录表就是ICClassMCStatus1000050

SELECT * FROM ICClassMCStatus1000050
-- 一级菜单：t_subsystem
-- 二级菜单：t_dataflowsubsystem
-- 三级菜单：t_dataflowsubfunc
-- 四级菜单：t_dataflowdetailfunc

















