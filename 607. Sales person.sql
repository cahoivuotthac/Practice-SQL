--use minus operation in SQL--
select name
from SalesPerson
where sales_id not in(
    select sales_id
    from Orders o inner join Company cp on o.com_id = cp.com_id
    where name = 'RED'
)
