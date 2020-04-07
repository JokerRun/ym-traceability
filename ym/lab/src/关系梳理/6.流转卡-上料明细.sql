select mfc.FFlowCardNo,mfc.FTaskBillNo, mtrc.FCode,mtrc.FItemID
from MES14.dbo.M_FlowCard mfc
         inner join MES14.dbo.M_TaskReportCode mtrc on mfc.FFlowCardNo = mtrc.FCode


