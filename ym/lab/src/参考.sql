select top 100 *
from zj0730.dbo.t_bos200000027 bos
inner join M_flowCard fc on bos.Ftext8=fc.FFlowCardNo
inner join M_TaskReportCode trc on trc.fbatch =fc.FFSDno
inner join M_Order d on fc.FTaskBillNo=d.FBillNo
inner join zj0730.dbo.icmo icmo on icmo.fbillno=d.FWorkNo