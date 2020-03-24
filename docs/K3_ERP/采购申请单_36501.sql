SELECT t3.fname AS 使用部门,Convert(varchar(10),t1.FDate,120) AS 日期,t1.FBillNo AS 编号,t1.Fnote AS 备注,
t9.FNumber AS 物料代码,t9.FName AS 物料名称,t9.FModel AS  规格型号,t10.FName AS 单位,
convert(float ,t2.FAuxQty) AS 数量,Convert(varchar(10),t2.FFetchTime,120) AS 到货日期,t2.FUse AS 用途,
t11.FName AS 供应商,t2.FEntrySelfP0133 AS 生产要求及唛头,t5.FName AS 申请人,t4.FName  AS 审批人,
Convert(varchar(10),t1.FCheckTime,120) AS 审批日期,t1.FCheckerID,
t6.FName  AS 制单
/* ,t8.FName  AS 业务类型,FHeadSelfP0132 AS 采购部门,
t7.FName  AS 源单类型,FHeadSelfP0131 AS 附注*/
FROM POrequest AS t1 (NOLOCK )
INNER JOIN  POrequestEntry AS t2 (NOLOCK ) ON t1.FInterID = t2.FInterID
LEFT  JOIN dbo.t_Department AS t3 (NOLOCK ) ON t1.FDeptID = t3.FItemID
LEFT  JOIN dbo.t_User  AS t4 (NOLOCK ) ON t4.FUserID  = t1.FCheckerID
LEFT JOIN dbo.t_Emp  AS t5 (NOLOCK ) ON  t5.FItemID = t1.FRequesterID
LEFT  JOIN dbo.t_User   AS t6 (NOLOCK ) ON t6.FUserID  = t1.FBillerID
LEFT JOIN v_ICTransType AS  t7 (NOLOCK ) ON t2.FSourceTranType = t7.FID
LEFT JOIN t_Submessage AS t8 (NOLOCK ) ON   t1.FBizType = t8.FInterID
INNER  JOIN t_ICItem AS  t9  (NOLOCK ) ON     t2.FItemID = t9.FItemID
 INNER JOIN t_MeasureUnit AS  t10 (NOLOCK ) ON     t2.FUnitID = t10.FItemID
LEFT    JOIN t_Supplier AS  t11 (NOLOCK ) ON     t2.FSupplyID = t11.FItemID
where t1.FCheckerID<=0 OR t1.FCheckerID  IS NULL