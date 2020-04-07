select *
from MES14.dbo.M_TaskReport mtr
         left join MES14.dbo.M_TaskReportCode mtrc on mtr.FID = mtrc.FReportID
where mtrc.FItemID like 'P.%';