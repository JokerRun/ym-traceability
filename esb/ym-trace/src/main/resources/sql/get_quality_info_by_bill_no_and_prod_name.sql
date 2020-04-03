select customerName,billNo,Fname,qty,

       max(FBatchNo) fbatchNo,
       max(ftext4) measuredVoltage,
       max(ftext5) dischargeMode,
       max(FDecimal) custRequirements,
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
where billNo=:billNo and Fname = :Fname
group by customerName,billNo,Fname,qty