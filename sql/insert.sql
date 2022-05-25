
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









