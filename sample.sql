select Sales from ['Sample - Superstore$'] 
where Sales>15000;
select *from ['Sample - Superstore$']order by Sales
select max(sales) from ['Sample - Superstore$']
where sales<(select max(sales) from ['Sample - Superstore$'])


select Sales, DENSE_RANK() over(order by Sales DESC) as  DENSE_RANK
from ['Sample - Superstore$']
select top 1 Sales from 
(select distinct top 10 Sales	
from ['Sample - Superstore$']
order by Sales desc) result
order by Sales	
