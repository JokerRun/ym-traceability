select
    -- 产品表
    FItemID   as "产品内码",
    FNumber   as "产品代码",
    FParentID as "产品类代码",
    FName     as "产品名称",
    FNameEn   as "英文名称",
    FFullName as "全名",
    FModel    as "规格型号",
    FModelEn  as "英文规格",
    FSource   as "来源"
from dbo.t_icitem
;