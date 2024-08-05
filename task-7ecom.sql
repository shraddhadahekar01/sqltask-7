select * from customer
	
select * from product
	
---create a report of all state sales,quantity,discount,profit with following aggre.,sum,avg,min,max,count

select c.state,sum(s.sales) as "sum_of_sales",sum(s.quantity) as "sum_of_quantity",sum(s.discount) as "sum_of_discount",sum(s.profit)as "sum_of_profit",
avg(s.sales) as "sales_average",avg(s.quantity) as "average_quantity",min(s.sales)as "min_sales",min(s.discount)as "min_discount",max(s.sales) as "max_sales",
count(s.sales) as "count_of_sales" from sales as s
inner join customer as c
on s.customer_id=s.customer_id
group by c.state
 
---get data of all state and city's avg customer age

select state,city,avg(age) from customer
group by state,city

----get data of 2017 to 2018 with product_name and sales per quantity
	
select p.product_name,sum(s.sales)/sum(s.quantity) as "sales_per_quantity",s.order_date from sales as s
inner join product as p
on s.product_id=p.product_id
where s.order_date between '2017-01-01' and '2018-12-31'
group by s.order_date,p.product_name


