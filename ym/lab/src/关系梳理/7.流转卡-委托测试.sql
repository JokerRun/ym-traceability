select mfc.FTaskBillNo,
       mfc.FFlowCardNo,
       mfc.FBatchNO,
       mfc.FFSDno,
       mfc.FFSDsb
from MES14.dbo.M_FlowCard mfc
         inner join AIS20131118110255.dbo.t_BOS200000027 tbos on mfc.FFlowCardNo = tbos.FText8;



