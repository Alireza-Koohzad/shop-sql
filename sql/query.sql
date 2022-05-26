
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




-- لیست کاربرانی که هزینه خریدشان در یک ماه مورد نظر از ماه قبلی آن کمتر بوده است

select * from "User" natural join "Order" 
where "User".id in(
	select user_id from (
select sum(total_price) , O.user_id  from "Order" as O natural join "Payment" as P
where P.status = true  and Date between '2022-4-1' and  '2022-5-1' and 
 O.user_id < all (
	 		select  sum(total_price)  from "Order" natural join "Payment" as P
				where P.status = true  and Date between '2022-3-1' and  '2022-4-1'
					group by O.user_id
)
	group by O.user_id
		)as T
)



-- اطلاعات کاربرانی که سفارشات آن ها پرداخت نهایی شده است

select * from "Order" inner join "User"
on "User".id = "Order".user_id
where "Order".id in (
	select id  from "Order"
	where pay_status = true 
	intersect 
	select order_id  from "Payment"
	where status = true
)





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






-- تاریخ اولین خرید هر کاربر 
	
select  U.username , min(P.date) as firstـpurchase from "Payment" as P  natural join "User" as U 
natural join "Order" as O 
where P.status = true
group by U.id 


-- جمع کل خرید های صورت گرفته در ۵ ماه اخیر
select sum(total_price) from "Payment" as P
where date between '2022-1-26'  and '2022-5-26'




-- تعداد کسانی که هیچ خریدی نکردند 

select U.id  ,  U.username from "User" as U 
group by U.id
except
select U.id , U.username  from "User" as U 
natural join "Order" as O natural join "Payment" as P
where P.status = true
group by U.id


-- کسانی که حداقل  دو نوع دسته غذا سفارش داده اند

select id , username , email from "User" where id in (
select user_id  from  "OrderItem" as OI natural join "MenuItem" natural join "Order" 
where order_id in (select order_id from "Payment" where status = true)
group by user_id
having count( distinct type_id) > 1
) 

--  میانگین قیمت غذا های هر دسته بندی  

select id , name , avg_price from "MenuType"  inner join (
select type_id, cast(avg(price) as int) as avg_price from "MenuItem"  
group by type_id order by avg_price desc
) as T
on "MenuType".id = T.type_id 


-- لیست کاربرانی که سبد خرید فعال دارند

select  U.id , U.username  ,  U.email from "User" as U left outer join "Cart"  
on "Cart".user_id = U.id



-- لیست کاربرانی که سفارش داده اند اما پرداخت نکرده اند

select * from "User" natural join "Order" as O
where not exists (
	select * from "Payment"  as P
	where  O.id = P.order_id	
)


--  کالا هایی که حداقل در بیش از یک سبد خرید حضور دارند

select  * from "MenuItem"
where id in(
select  menuitem_id from "CartItem" group by menuitem_id having count(distinct cart_id) > 1 
)


--    قیمت سفارشاتی که از حداقل یکی از مجموعه سفارشاتی که منجر به پرداخت نهایی نشده است بیشتر است
select * from "Order" 
where amount > any 
(select total_price from "Payment" as P natural join "Order"  where pay_status= false)


--سفارشاتی بالای ۳۰۰۰۰ که هنوز به یوزر تحویل داده نشده است

select  * from "Payment" inner join "Delivery" as D
on "Payment".id = D.payment_id
where total_price > 30000 and D.status = false


-- ایندکس روی شماره سفارش جدول سفارش

CREATE INDEX index_order 
ON "Order" (id);

-- ایندکس روی شماره غذا جدول غذا

CREATE INDEX index_food 
ON "MenuItem"(id);






