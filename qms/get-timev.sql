select
    --
    PrjKey   as "PrjKey",
    CDID     as "存档编号",
    times    as "次数",
    sj       as "放电时间",
    tim_vot1 as "1 #电压",
    tim_vot2 as "2 #电压",
    tim_vot3 as "3 #电压",
    tim_vot4 as "4 #电压",
    tim_vot5 as "5 #电压",
    tim_vot6 as "6 #电压",
    tim_vot7 as "7 #电压",
    tim_vot8 as "8 #电压",
    tim_vot9 as "9 #电压",
    cdmc     as "存档名称"
from fd_timev as timev;