select
       -- 客户表
FNumber as "客户代码",
FParentID as "上级内码",
FItemID as "客户内码",
FClassTypeID as "单据编码",
FName as "客户名称",
FNameEN as "英文名称",
FRegDate as "登记日期",
FShortName as "客户简称",
FShortNumber as "客户简码",
FStatus as "状态"
from dbo.t_Organization;