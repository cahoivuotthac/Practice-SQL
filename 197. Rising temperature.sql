select w_now.id as Id
from Weather w_now inner join Weather w_pre on datediff(dy, w_pre.recordDate, w_now.recordDate) = 1
where w_now.temperature > w_pre.temperature 
