select
    -- 产品表
    prod.FItemID   as "产品内码",
    prod.FNumber   as "产品代码",
    prod.FParentID as "产品类代码",
    prod.FName     as "产品名称",
    prod.FNameEn   as "英文名称",
    prod.FFullName as "全名",
    prod.FModel    as "规格型号",
    prod.FModelEn  as "英文规格",
    prod.FSource   as "来源",
    t2.FFileName   AS 文件名,
    t2.fdata       AS 访问链接
from dbo.t_icitem as prod
         LEFT JOIN dbo.t_accessory AS t2 ON prod.FItemID = t2.FItemID
;