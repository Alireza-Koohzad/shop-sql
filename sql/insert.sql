
-- address 
insert into "Address" (city , street_number , post_code ,street_name  ) values ('paris', 1 , 1 , 'asadi' );
insert into "Address" (city , street_number , post_code ,street_name  ) values ('noor', 2 , 12 , 'toos' );
insert into "Address" (city , street_number , post_code ,street_name  ) values ('tehran', 3 , 123 , 'hafez' );
insert into "Address" (city , street_number , post_code ,street_name  ) values ('esfahan', 4 , 134, 'saadi' );
insert into "Address" (city , street_number , post_code ,street_name  ) values ('tehran', 5 , 144 , 'ferdosi' );
insert into "Address" (city , street_number , post_code ,street_name  ) values ('tabriz', 6 , 15 , 'abooalisina' );



--customer 
insert into "Customer" (firstname , lastname , address_id ) values ('alireza' , 'koohzad' , 13);
insert into "Customer" (firstname , lastname , address_id ) values ('mojtaba' , 'akbari' , 14);
insert into "Customer" (firstname , lastname , address_id ) values ('pouya' , 'rezvani' , 15);
insert into "Customer" (firstname , lastname , address_id ) values ('navid' , 'nazari' , 16);
insert into "Customer" (firstname , lastname , address_id ) values ('yousef' , 'mortazavi' , 17);
insert into "Customer" (firstname , lastname , address_id ) values ('mohammad' , 'haghparast' , 18);



--user 

insert into "User" (email , username , password  , role , customer_id)
	values ('alireza@gmail.com' , 'alireza' , 123456, 'user' , 3);
insert into "User" (email , username , password  , role , customer_id)
	values ('mojtaba@gmail.com' , 'mojtaba' , 151353, 'user' , 4);
insert into "User" (email , username , password  , role , customer_id)
	values ('pouya@gmail.com' , 'pouya' , 12345678, 'admin' , 5);
insert into "User" (email , username , password  , role , customer_id)
	values ('navid@gmail.com' , 'navid' , 9876354, 'user' , 6);
insert into "User" (email , username , password  , role , customer_id)
	values ('yousef@gmail.com' , 'yousef' , 4454123, 'user' , 7);
insert into "User" (email , username , password  , role , customer_id)
	values ('mohammad@gmail.com' , 'mohammad' , 8883124, 'admin' , 8);


--cart

insert into "Cart" (user_id ) values (3);
insert into "Cart" (user_id ) values (4);
insert into "Cart" (user_id ) values (5);
insert into "Cart" (user_id ) values (6);
insert into "Cart" (user_id ) values (7);
insert into "Cart" (user_id ) values (8);



--menu type

insert into "MenuType" (name) values ('deser');
insert into "MenuType" (name) values ('food');
insert into "MenuType" (name) values ('drink');




--menu item

insert into "MenuItem" (name , price , image , status, description , type_id ) 
	values ('ghorme sabzi' , 50000 , 'ghormesabzi.png' , 'yes' , 'awesome' , 2);
insert into "MenuItem" (name , price , image , status, description , type_id ) 
	values ('chelo kabab' , 90000 , 'kabab.png' , 'yes' , 'good' , 2);
insert into "MenuItem" (name , price , image , status, description , type_id ) 
	values ('soop' , 10000 , 'soop.png' , 'yes' , 'not bad' , 1);	
insert into "MenuItem" (name , price , image , status, description , type_id ) 
	values ('akbarjooje' , 70000 , 'akbarjooje.png' , 'yes' , 'good' , 2);
insert into "MenuItem" (name , price , image , status, description , type_id ) 
	values ('nooshabe' , 5000 , 'nooshabe.png' , 'yes' , 'bad' , 3);
insert into "MenuItem" (name , price , image , status, description , type_id ) 
	values ('doogh' , 4000 , 'doogh.png' , 'yes' , 'good' , 3);
insert into "MenuItem" (name , price , image , status, description , type_id ) 
	values ('zhele' , 9000 , 'zhele.png' , 'yes' , 'not bad' , 1);	
insert into "MenuItem" (name , price , image , status, description , type_id ) 
	values ('gheime' , 30000 , 'gheime.png' , 'yes' , 'perfect' , 2);
insert into "MenuItem" (name , price , image , status, description , type_id ) 
	values ('delester' , 10000 , 'delester.png' , 'no' , 'very good' , 3);
insert into "MenuItem" (name , price , image , status, description , type_id ) 
	values ('cake' , 12000 , 'cake.png' , 'yes' , 'good stuff' , 1);
	

	
--cart item 

insert into "CartItem" (quantity , cart_id , menuitem_id) values (12 , 1 , 1);
insert into "CartItem" (quantity , cart_id , menuitem_id) values (2 , 2 , 2);
insert into "CartItem" (quantity , cart_id , menuitem_id) values (3 , 3 , 3);
insert into "CartItem" (quantity , cart_id , menuitem_id) values (1 , 4 , 4);
insert into "CartItem" (quantity , cart_id , menuitem_id) values (2 , 5 , 5);
insert into "CartItem" (quantity , cart_id , menuitem_id) values (6 , 6 , 6);
insert into "CartItem" (quantity , cart_id , menuitem_id) values (2 , 1 , 10);
insert into "CartItem" (quantity , cart_id , menuitem_id) values (2 , 2 , 1);
insert into "CartItem" (quantity , cart_id , menuitem_id) values (1 , 3 , 2);
insert into "CartItem" (quantity , cart_id , menuitem_id) values (6 , 1 , 10);
insert into "CartItem" (quantity , cart_id , menuitem_id) values (5 , 5 , 10);
insert into "CartItem" (quantity , cart_id , menuitem_id) values (5 , 2 , 1);


--submenu


insert into "subMenu" (type_id , name) values ( 1, 'irani');
insert into "subMenu" (type_id , name) values ( 1, 'cold');
insert into "subMenu" (type_id , name) values ( 1, 'hot');
insert into "subMenu" (type_id , name) values ( 1, 'child');
insert into "subMenu" (type_id , name) values ( 2, 'irani');
insert into "subMenu" (type_id , name) values ( 2, 'italy');
insert into "subMenu" (type_id , name) values ( 2, 'khis');
insert into "subMenu" (type_id , name) values ( 2, 'khoshk');
insert into "subMenu" (type_id , name) values ( 3, 'gazdar');
insert into "subMenu" (type_id , name) values ( 3, 'bigaz');
insert into "subMenu" (type_id , name) values ( 3, 'hot');
insert into "subMenu" (type_id , name) values ( 3, 'cold');



--order
insert into "Order" (amount , pay_status , ship_status , user_id  ) values ( 30000, true , true , 3 );
insert into "Order" (amount , pay_status , ship_status , user_id  ) values ( 100000, true , true , 4 );
insert into "Order" (amount , pay_status , ship_status , user_id  ) values ( 42300, true , true , 5 );
insert into "Order" (amount , pay_status , ship_status , user_id  ) values ( 50000, false , false , 6 );
insert into "Order" (amount , pay_status , ship_status , user_id  ) values ( 20000, true , true , 7 );
insert into "Order" (amount , pay_status , ship_status , user_id  ) values ( 10000, false, false , 3 );
insert into "Order" (amount , pay_status , ship_status , user_id  ) values ( 30000, true , false , 4 );
insert into "Order" (amount , pay_status , ship_status , user_id  ) values ( 1000, true , true , 3);
insert into "Order" (amount , pay_status , ship_status , user_id  ) values ( 2000, true , true , 5);
insert into "Order" (amount , pay_status , ship_status , user_id  ) values ( 4300, true , true , 5);



--order Item 

insert into "OrderItem" (menuitem_id , order_id , quantity) values ( 2 , 1 , 12);
insert into "OrderItem" (menuitem_id , order_id , quantity) values ( 2 ,  2 ,  2);
insert into "OrderItem" (menuitem_id , order_id , quantity) values ( 3 , 1 , 3);
insert into "OrderItem" (menuitem_id , order_id , quantity) values ( 4  , 3 , 1);
insert into "OrderItem" (menuitem_id , order_id , quantity) values ( 5 , 3,2 );
insert into "OrderItem" (menuitem_id , order_id , quantity) values ( 10 , 2 ,  6);
insert into "OrderItem" (menuitem_id , order_id , quantity) values ( 10 , 4, 5 );
insert into "OrderItem" (menuitem_id , order_id , quantity) values ( 1 , 5 , 5);
insert into "OrderItem" (menuitem_id , order_id , quantity) values ( 1 , 4,   2);



-- payement

insert into "Payment" (date , total_price , status , pay_code , order_id) values (  '2022-12-12' , 30000, true ,   15 , 1  );
insert into "Payment" (date , total_price , status , pay_code , order_id) values (  '2022-1-1' , 100000, false,   2453 , 2  );
insert into "Payment" (date , total_price , status , pay_code , order_id) values (  '2022-2-7' , 42300, false ,   3453 , 3  );
insert into "Payment" (date , total_price , status , pay_code , order_id) values (  '2022-3-24' , 50000, true ,   44534 , 4  );
insert into "Payment" (date , total_price , status , pay_code , order_id) values (  '2022-11-23' , 20000, true ,   5453 , 5  );
insert into "Payment" (date , total_price , status , pay_code , order_id) values (  '2022-6-28' , 10000, true ,   145346 , 6  );
insert into "Payment" (date , total_price , status , pay_code , order_id) values (  '2022-7-2' , 1000, true ,   1463 , 8  );
insert into "Payment" (date , total_price , status , pay_code , order_id) values (  '2022-4-5' , 2000, true ,   1463 ,9  );
insert into "Payment" (date , total_price , status , pay_code , order_id) values (  '2022-3-17' , 4300, true ,   1463 , 10  );


--delivery

insert into "Delivery" (date , status , payment_id , address_id ) values (  '2022-12-15' , true, 1 ,   13  );
insert into "Delivery" (date , status , payment_id , address_id ) values (  '2022-1-3' , false, 2 ,   14  );
insert into "Delivery" (date , status , payment_id , address_id ) values (  '2022-2-10' , false, 3 ,   15  );
insert into "Delivery" (date , status , payment_id , address_id ) values (  '2022-3-28' , true, 4 ,   16  );
insert into "Delivery" (date , status , payment_id , address_id ) values (  '2022-11-28' , true, 5 ,   17  );
insert into "Delivery" (date , status , payment_id , address_id ) values (  '2022-6-30' , true, 6 ,   17  );
insert into "Delivery" (date , status , payment_id , address_id ) values (  '2022-7-5' , true, 7 ,   18  );
insert into "Delivery" (date , status , payment_id , address_id ) values (  '2022-4-8' , true, 8 ,   13 );
insert into "Delivery" (date , status , payment_id , address_id ) values (  '2022-3-20' , true, 9 ,   14  );



--rate 

insert into "Rate" (user_id , menuitem_id , rate , isbuy ) values (  3 , 1, 4 ,  true  );
insert into "Rate" (user_id , menuitem_id , rate , isbuy ) values (  4 , 4, 3 ,  true  );
insert into "Rate" (user_id , menuitem_id , rate , isbuy ) values (  5 , 7, null ,  false  );
insert into "Rate" (user_id , menuitem_id , rate , isbuy ) values (  6 , 9, null ,  false  );
insert into "Rate" (user_id , menuitem_id , rate , isbuy ) values (  7 , 2 , 4 , true  );
insert into "Rate" (user_id , menuitem_id , rate , isbuy ) values (  8 , 10  , 5 ,true  );
insert into "Rate" (user_id , menuitem_id , rate , isbuy ) values (  3 , 2,   2, true  );
insert into "Rate" (user_id , menuitem_id , rate , isbuy ) values (  4 , 5 , 5, true  );
insert into "Rate" (user_id , menuitem_id , rate , isbuy ) values (  8 , 6 ,  1 ,true  );
insert into "Rate" (user_id , menuitem_id , rate , isbuy ) values (  6 , 8,    5 , true  );


-- comment 

insert into "Comment" (user_id , menuitem_id , message ) values (  3 , 1 , 'this is a good food' );
insert into "Comment" (user_id , menuitem_id , message ) values (  4 , 4  , 'dd' );
insert into "Comment" (user_id , menuitem_id , message ) values (  5, 7 , 'a' );
insert into "Comment" (user_id , menuitem_id , message ) values (  7 ,2 , 'b' );
insert into "Comment" (user_id , menuitem_id , message ) values (  8 , 10 , 'asd' );
insert into "Comment" (user_id , menuitem_id , message ) values (  6 , 8 , 'adaf' );
insert into "Comment" (user_id , menuitem_id , message ) values (  8 ,6 , 'fgggg' );
insert into "Comment" (user_id , menuitem_id , message ) values (  3 ,2 , 'bbbbv' );


-- permission

insert into "Permission" (user_id , per_name ) values (  5 , 'delete' );
insert into "Permission" (user_id , per_name ) values (  5 , 'update' );
insert into "Permission" (user_id , per_name ) values (  5 , 'insert' );
insert into "Permission" (user_id , per_name ) values (  8 , 'delete' );
insert into "Permission" (user_id , per_name ) values (  8 , 'update' );



--manage 

insert into "Manage" (per_id , menuitem_id ) values (  1 , 1 );
insert into "Manage" (per_id , menuitem_id ) values (  2 , 1 );
insert into "Manage" (per_id , menuitem_id ) values (  3 , 2 );
insert into "Manage" (per_id , menuitem_id ) values (  4 , 3 );
insert into "Manage" (per_id , menuitem_id ) values (  5 , 4 );


