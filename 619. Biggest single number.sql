select top 1 
case
    when count(num) = 1 then num
    else null
end as num --the name of the num column--
from MyNumbers
group by num
order by num desc 
