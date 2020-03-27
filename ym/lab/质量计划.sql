SELECT t1.* , t2.FFileName AS 文件名, t2.fdata AS 访问链接
FROM dbo.t_Item t1
    with (index (uk_Item2))
         LEFT JOIN dbo.t_Item_3021 x2 ON t1.FItemID = x2.FItemID
         LEFT JOIN dbo.t_accessory AS t2 ON t1.FItemID = t2.FItemID
WHERE FItemClassID = 3021