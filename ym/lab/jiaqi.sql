--- 最终测试版(去除capacity1 ~ 9 直接算出平均值)
select customerName,billNo,Fname,qty,

       max(FBatchNo),
       max(ftext4),
       max(ftext5),
       max(FDecimal),
       Convert(decimal(18,2),(Convert(decimal(18,2),CAST ( max(capacity1) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity2) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity3) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity4) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity5) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity6) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity7) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity8) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity9) AS FLOAT ))
                                 )/9) as total

from tmp_Query
where billNo='test00000000000001'
group by customerName,billNo,Fname,qty


--- 测试版(包含 capacity1 ~ 9 便于测试)

select customerName,billNo,Fname,qty,

       max(FBatchNo),
       max(ftext4),
       max(ftext5),
       max(FDecimal),
       max(capacity1),
       max(capacity2),
       max(capacity3),
       max(capacity4),
       max(capacity5),
       max(capacity6),
       max(capacity7),
       max(capacity8),
       max(capacity9),
       Convert(decimal(18,2),(Convert(decimal(18,2),CAST ( max(capacity1) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity2) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity3) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity4) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity5) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity6) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity7) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity8) AS FLOAT ))
           +Convert(decimal(18,2),CAST ( max(capacity9) AS FLOAT ))
                                 )/9) as total

from tmp_Query
where billNo='test00000000000001'
group by customerName,billNo,Fname,qty