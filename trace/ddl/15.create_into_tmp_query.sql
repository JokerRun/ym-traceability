select c.FName customerName,
       so.FBillNo billNo,
       ici.Fname Fname,
       oe.FQty qty,
       fc.fbatchno,
       cte.ftext4 ftext4,
       cte.ftext5 ftext5,
       Cast(Convert(decimal(18,2),cte.fdecimal) as nvarchar)+'V' fdecimal,
       fdsc.capacity1,fdsc.capacity2,fdsc.capacity3,fdsc.capacity4,fdsc.capacity5,fdsc.capacity6,,fdsc.capacity7,fdsc.capacity8,fdsc.capacity9
into tmp_Query
from SEOrder so left join orderEntry oe on so.FInterID=oe.FInterID
                left join client c on so.FCustID=c.FItemID
                left join ICItem ici on oe.FItemID=ici.FItemID
                left join WorkOrder wo on wo.FOrderInterID=so.FInterID
                left join PickOrder po on po.FWorkNo=wo.FBillNo
                left join FlowCard fc on fc.FTaskBillNo=po.FBillNo
                left join TaskReportCode trc on trc.FCode =fc.FFlowCardNo
                left join CommissionTest ct on ct.ftext=trc.fbatch
                left join CommissionTestEntry cte on ct.FID=cte.fid
                left join FDSC fdsc on fdsc.dcph=fc.FFlowCardNo