---1.是否显示质量计划 FNumber 销售订单上的物料代码
SELECT a.FItemID, b.FNumber
from dbo.t_ICItemCustom a
         inner join dbo.t_ICItemCore b on a.FItemID = b.FItemID
where F_113 = 1
  and b.FNumber = 'C.21.LM.SZ.RAY.023101'

--2.如果此表有就这取()
SELECT b.FFileName, b.fid, b.FUploadTime, a.FNumber, b.FItemID, b.FTypeID
from dbo.t_ICItemCore a
         inner join dbo.t_Accessory b on a.FItemID = B.FItemID and FTypeID = 4 and FIsPIC = 0 and FSaveMode = 0 and
                                         FNumber = 'C.21.LM.SZ.RAY.023101'

--------------------------------------------------------------------------------------------------------

--2.如果此表无，比如下面这个
SELECT b.FFileName, b.fid, b.FUploadTime, a.FNumber, b.FItemID, b.FTypeID
from dbo.t_ICItemCore a
         inner join dbo.t_Accessory b on a.FItemID = B.FItemID and FTypeID = 4 and FIsPIC = 0 and FSaveMode = 0 and
                                         FNumber = 'C.22.LM.SA.AER.000102'

---3.如果无调用以下表调取质量计划

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
---用上面的方式可以获取质量计划的FItemID和ftypeid
---调用api接口 FType=2 浙江 FType=1 宁波
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