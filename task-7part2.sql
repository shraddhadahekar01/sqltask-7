select* from employees
	
select * from projects

	--report by state
	
select e.state,sum(p.budget) as total_budget,avg(p.budget) as average_budget,min(p.budget)as min_budget,
max(p.budget) as max_budget,count(p.project_id) as no_of_projects
from projects as p
inner join employees as e on p.employee_id=e.employee_id
group by e.state

----average age of employees by state and city

select state,city,avg(age) as average_age
from employees
group by state,city

----get data of projects ,budgets for 2023

select p.project_name,sum(p.budget)as total_budget,start_date
from projects as p
where p.start_date between '2023-01-01' and '2023-12-31'
group by p.start_date,p.project_name

---count of prjects per city

select e.city,count(p.project_id) as number_of_projects
from projects as p
inner join employees as e on p.employee_id=e.employee_id
group by e.city