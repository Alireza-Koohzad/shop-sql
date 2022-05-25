insert into "Customer" ("a" , "b" , 1);


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





