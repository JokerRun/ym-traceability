select
    -- 产品表
    prod.FItemID   as "FItemID",
    prod.FNumber   as "FNumber",
    prod.FParentID as "FParentID",
    prod.FName     as "FName",
    prod.FNameEn   as "FNameEn",
    prod.FFullName as "FFullName",
    prod.FModel    as "FModel",
    prod.FModelEn  as "FModelEn",
    prod.FSource   as "FSource",
    -- 附件表
    t2.FFileName   AS "FFileName",
    t2.FFileName   AS "FFileUrl",
    ''      AS "fdata"
from dbo.t_icitem as prod
         LEFT JOIN dbo.t_accessory AS t2 ON prod.FItemID = t2.FItemID
;