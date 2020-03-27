-- select *from dbo.vwICBill_11 where FNumber like 'P.%';
Select v1.FInterID                                                                      AS [FInterID],
       u1.FEntryID                                                                      AS [FEntryID],
       v1.Fdate                                                                         AS [Fdate],
       v1.FBillNo                                                                       AS [FBillNo],
       t12.FNumber                                                                      AS [FNumber],
       t12.Fname                                                                        AS [FItemID],
       u1.FBatchNo,
       u1.FSourceBillNo
from dbo.ICStockBill v1 (NOLOCK)
         Left Join dbo.ICStockBillEntry u1 (NOLOCK) on v1.FInterID = u1.FInterID
         Left Join dbo.t_ICItem t12 (NOLOCK) on u1.FItemID = t12.FItemID
where v1.FTranType = 24
  and t12.FNumber like 'P%'

