select mo.FBillNo,
       mo.FXSbill,
       mo.FBillNo,
       mfc.FTaskBillNo,
       mfc.FFlowCardNo
from MES14.dbo.M_Order mo
         inner join MES14.dbo.M_FlowCard mfc on mo.FBillNo = mfc.FTaskBillNo
