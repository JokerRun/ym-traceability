---1.�Ƿ���ʾ�����ƻ� FNumber ���۶����ϵ����ϴ���
SELECT a.FItemID, b.FNumber
from dbo.t_ICItemCustom a
         inner join dbo.t_ICItemCore b on a.FItemID = b.FItemID
where F_113 = 1
  and b.FNumber = 'C.21.LM.SZ.RAY.023101'

--2.����˱��о���ȡ()
SELECT b.FFileName, b.fid, b.FUploadTime, a.FNumber, b.FItemID, b.FTypeID
from dbo.t_ICItemCore a
         inner join dbo.t_Accessory b on a.FItemID = B.FItemID and FTypeID = 4 and FIsPIC = 0 and FSaveMode = 0 and
                                         FNumber = 'C.21.LM.SZ.RAY.023101'

--------------------------------------------------------------------------------------------------------

--2.����˱��ޣ������������
SELECT b.FFileName, b.fid, b.FUploadTime, a.FNumber, b.FItemID, b.FTypeID
from dbo.t_ICItemCore a
         inner join dbo.t_Accessory b on a.FItemID = B.FItemID and FTypeID = 4 and FIsPIC = 0 and FSaveMode = 0 and
                                         FNumber = 'C.22.LM.SA.AER.000102'

---3.����޵������±��ȡ�����ƻ�

select FFileName, b.fid, b.FUploadTime, b.FItemID, ftypeid
from dbo.t_ICItemCore a
         inner join
     (select a.fnumber, b.FFileName, b.fid, b.FUploadTime, ftypeid, b.FItemID
      from dbo.t_Item a
               inner join dbo.t_Accessory b on
          a.fitemid = b.FItemID and a.FItemClassID = B.ftypeid
      where FItemClassID = 3021
        and ftypeid = 3021
        and FIsPIC = 0
        and FSaveMode = 0) b
     on SubString(a.FNumber, 12, 3) = b.FNumber
where a.FNumber = 'C.22.LM.SA.AER.000102'
---������ķ�ʽ���Ի�ȡ�����ƻ���FItemID��ftypeid
---����api�ӿ� FType=2 �㽭 FType=1 ����
---http://192.168.0.221:11180/PCodeClient/api.ashx?cmd=api56685&FTypeID=3021&FItemID=254584&FType=1

GO


SELECT b.FFileName, b.fid, b.FUploadTime, a.FNumber, b.FItemID, b.FTypeID
from dbo.t_ICItemCore a
         inner join dbo.t_Accessory b on a.FItemID = B.FItemID and FTypeID = 4 and FIsPIC = 0 and FSaveMode = 0
union
select FFileName, b.fid, b.FUploadTime, a.FNumber, b.FItemID, ftypeid
from dbo.t_ICItemCore a
         inner join
     (select a.fnumber, b.FFileName, b.fid, b.FUploadTime, ftypeid, b.FItemID
      from dbo.t_Item a
               inner join dbo.t_Accessory b on
          a.fitemid = b.FItemID and a.FItemClassID = B.ftypeid
      where FItemClassID = 3021
        and ftypeid = 3021
        and FIsPIC = 0
        and FSaveMode = 0) b
     on SubString(a.FNumber, 12, 3) = b.FNumber