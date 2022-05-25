
create table  "Address"(
	id  serial,
	city varchar(30) not null , 
	street_number INTEGER not null,
	street_name varchar(30) not null,
	post_code varchar(30) not null,
	PRIMARY KEY (id)
	
);


create table "Customer" (
	id  serial,
	firstname varchar(20) not null,
	lastname varchar(20) not null,
	address_id Integer not null,
	foreign key (address_id) references "Address" (id),
	PRIMARY KEY (id)
);


create table "User"(
	id  serial,
	email varchar(30) not null,
	username varchar(30) not null,
	password varchar(30) not null,
	role varchar(10) default 'user' not null,
 	customer_id Integer not null , 
	FOREIGN KEY (customer_id) REFERENCES "Customer" (id),
	PRIMARY KEY (id),
	CONSTRAINT check_password_len CHECK(length (password) >=6) , 
	CONSTRAINT check_email_format  CHECK(email LIKE '%___@___%.__%')
	
)



create table "Phone"(
	phone_number Integer not null ,
	customer_id Integer not null , 
	FOREIGN KEY (customer_id) REFERENCES "Customer" (id),
	PRIMARY KEY (phone_number , customer_id),
	CONSTRAINT check_phone_length  CHECK(phone_number =10)
)


create table  "Cart"(
	id  serial,
	user_id Integer not null ,
	FOREIGN KEY (user_id) REFERENCES "User" (id),
	PRIMARY KEY (id)

);


create table "MenuType" (
	id serial , 
	name varchar (20),
	PRIMARY KEY (id)

)



create table "MenuItem" (
	id serial ,
	name varchar(60) not null,
	price Integer not null,
	image varchar(100) not null , 
	status boolean not null ,
	description varchar(100) not null,
	type_id Integer not null ,
	FOREIGN KEY (type_id) REFERENCES "MenuType" (id),
	PRIMARY KEY (id)
);

create table  "CartItem"(
	id  serial,
	quantity Integer not null ,
	cart_id Integer not null ,
	menuItem_id Integer not null,
	FOREIGN KEY (cart_id) REFERENCES "Cart" (id) ,
	FOREIGN KEY (menuItem_id) REFERENCES "MenuItem" (id),
	PRIMARY KEY (id),
	CONSTRAINT check_quantity_len CHECK(quantity >0 )


);



create table "Order" (
	id serial , 
	amount Integer not null,
	pay_status boolean not null,
	ship_staus boolean not null,
	user_id Integer not null ,
	totalprice Integer not null , 
	FOREIGN KEY (user_id) REFERENCES "User" (id),
	PRIMARY KEY (id)

)

create table "OrderItem" (
	id serial , 
	menuItem_id Integer not null,
	order_id Integer not null ,
	quantity Integer not null , 
	FOREIGN KEY (order_id) REFERENCES "Order" (id),
	FOREIGN KEY (menuItem_id) REFERENCES "MenuItem" (id),
	PRIMARY KEY (id) , 
	CONSTRAINT check_quantity_len CHECK(quantity >0 )

	

)



create table "Payment" (
	id serial , 
	date Date not null , 
	total_price Integer not null , 
	status boolean not null,
	pay_code Integer not null,
	order_id Integer not null ,
	FOREIGN KEY (order_id) REFERENCES "Order" (id),
	PRIMARY KEY (id)

)

create table "Delivery" (
	id serial , 
	date Date not null , 
	status boolean not null,
	payment_id Integer not null ,
	address_id Integer not null ,
	FOREIGN KEY (payment_id) REFERENCES "Payment" (id),
	FOREIGN KEY (address_id) REFERENCES "Address" (id),
	PRIMARY KEY (id)

)


--part 2

create table "Manage" (
	id serial , 
	per_id Integer not null , 
	menuItem_id Integer not null ,
	FOREIGN KEY (menuItem_id) REFERENCES "MenuItem" (id),
	PRIMARY KEY (id)

)


create table "Permission" (
	id serial , 
	user_id Integer not null , 
	per_name varchar(100) not null ,
	FOREIGN KEY (user_id) REFERENCES "User" (id),
	PRIMARY KEY (id)

)


create table "Comment" (
	user_id Integer not null , 
	menuItem_id Integer not null , 
	message varchar(255) not null , 
	FOREIGN KEY (user_id) REFERENCES "User" (id),
	FOREIGN KEY (menuItem_id) REFERENCES "MenuItem" (id),
	PRIMARY KEY (user_id , menuItem_id )
)

create table "Rate" (
	user_id Integer not null , 
	menuItem_id Integer not null ,
	rate integer not null,
	isBuy boolean not null ,  
	FOREIGN KEY (user_id) REFERENCES "User" (id),
	FOREIGN KEY (menuItem_id) REFERENCES "MenuItem" (id),
	PRIMARY KEY (user_id , menuItem_id ) ,
	CONSTRAINT check_quantity_len CHECK(rate >=0 and rate <=5 )
)


 
create table "subMenu" (
	id serial ,
	type_id Integer not null , 
	FOREIGN KEY (type_id) REFERENCES "MenuType" (id),
	PRIMARY KEY (id)
)








