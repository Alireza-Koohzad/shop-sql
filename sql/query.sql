
-- سه یوزی که بیشترین خرید را تا به حال داشته اند

select U.id , U.username ,  max(total_price) as total_price 
	from "Payment" as P natural join "Order" as O natural join "User" as U 
	where P.status = true
	group by U.id order by total_price desc limit 2
	 
	 
	 
-- 	اطلاهات کالایی که بیشترین تعداد خرید را داشته
select id, name, sum from "MenuItem" inner join (
		select menuItem_id, sum(quantity) from "OrderItem"
		where order_id in (select order_id from "Payment" where status = true ) 
		group by menuItem_id
) as T
on T.menuItem_id = "MenuItem".id
order by sum desc
limit 1


-- جمع کل خرید های صورت گرفته در ۵ ماه اخیر
select sum(total_price) from "Payment" as P
where date between '2022-1-26'  and '2022-5-26'


--  تعداد دفعات سفارش دادن هر کاربر

(select U.id , U.username , count(U.id) from "User" as U 
natural join "Order" as O natural join "Payment" as P
where P.status = true
group by U.id)
union 
(
select id  , username , 0 from(	
select U.id  ,  U.username from "User" as U 
group by U.id
except
select U.id , U.username  from "User" as U 
natural join "Order" as O natural join "Payment" as P
where P.status = true
group by U.id) as T
) order by username asc


-- تاریخ اولین خرید هر کاربر 
	
select  U.username , min(P.date) as firstـpurchase from "Payment" as P  natural join "User" as U 
natural join "Order" as O 
where P.status = true
group by U.id 



