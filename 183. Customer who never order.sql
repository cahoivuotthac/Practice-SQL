select name as Customers
from Customers 
where id not in (
    select Customers.id 
    from Customers inner join Orders on Customers.id = Orders.customerId
)
