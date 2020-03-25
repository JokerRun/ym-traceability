select count(1)from SaleOrder;
select count(1)from ProductQualityPlan;
select count(1)from SaleOrder SO left join ProductQualityPlan pqp on pqp.FNumber = SO.FNumber;