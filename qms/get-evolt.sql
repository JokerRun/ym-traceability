select
--
PrjKey  as "项目主键",
CDID    as "存档编号",
daynum  as "天数",
dy_dm   as "dy_dm",
dy      as " 电压",
volt1   as "1号电压",
volt2   as "2号电压",
volt3   as "3号电压",
volt4   as "4号电压",
volt5   as "5号电压",
volt6   as "6号电压",
volt7   as "7号电压",
volt8   as "8号电压",
volt9   as "9号电压",
daytime as "每日放电时间",
cdmc    as "存档名称"
from fd_evolt as evolt;