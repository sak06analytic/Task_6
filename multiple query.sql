SELECT * FROM task_6.sales;

select category, sum(revenue)
from task_6.sales
group by category;

select category, count(category)
from task_6.sales 
group by category;


select * from task_6.sales
order by sold desc;

select category, count(*)
from task_6.sales
group by Category order by category;

select region, sum(revenue)
from task_6.sales
group by region having sum(revenue)>2000;


select * from task_6.sales;
delete from t_id where year(date)=2024;

