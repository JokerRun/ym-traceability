select
    --
    PrjKey as "PrjKey",
    CDID   as "存档编号",
    dylvl  as "电压级数",
    dy     as "电压",
    time1  as "1号时间",
    time2  as "2号时间",
    time3  as "3号时间",
    time4  as "4号时间",
    time5  as "5号时间",
    time6  as "6号时间",
    time7  as "7号时间",
    time8  as "8号时间",
    time9  as "9号时间",
    cdmc   as "存档名称"
from fd_vtime as vtime;