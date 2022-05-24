create table "Customer" (
	id INTEGER not NULL,
	firstname varchar(20),
	lastname varchar(20),
	address_id Integer not null,
	foreign key (address_id) references "Address" (id)
);

create table "User"(
	id INTEGER not NULL,
	email varchar(30),
	username varchar(30),
	password varchar(30),
	role varchar(10),
 	customer_id Integer not null , 
	FOREIGN KEY (customer_id) REFERENCES "Customer" (id)

)

create table  "Address"(
	id INTEGER not NULL,
	city varchar(20) not null , 
	street_number INTEGER not null,
	street_name Integer not null,
	post_code varchar(30) not null,
);

create table "Phone"(
	phone_number Integer not null ,
	customer_id Integer not null , 
	FOREIGN KEY (customer_id) REFERENCES "Customer" (id)
	
)


create table  "Cart"(
	id INTEGER not NULL,
	user_id Integer not null ,
	FOREIGN KEY (user_id) REFERENCES "User" (id)
);


create table  "CartItem"(
	id INTEGER not NULL,
	quantity Integer not null ,
	cart_id Integer not null ,
	menuItem_id Integer not null,
	FOREIGN KEY (cart_id) REFERENCES "Cart" (id)
	FOREIGN KEY (menuItem_id) REFERENCES "MenuItem" (id)
);


create table "MenuItem" (
	id Integer not null ,
	name varchar(20),
	price Integer not null,
	image varchar(100) not null , 
	status varchar(20) boolean not null ,
	description varchar(100) not null,
	type_id Integer not null ,
	FOREIGN KEY (type_id) REFERENCES "MenuType" (id)
)

create table "Order" (
	id Integer not null , 
	amount Integer not null,
	pay_status boolean not null,
	ship_staus boolean not null,
	user_id Integer not null ,
	FOREIGN KEY (user_id) REFERENCES "User" (id)	
)

create table "OrderItem" (
	id Integer not null , 
	menuItem_id Integer not null,
	order_id Integer not null ,
	quantity Integer not null , 
	FOREIGN KEY (order_id) REFERENCES "Order" (id)
	FOREIGN KEY (menuItem_id) REFERENCES "MenuItem" (id)
)



create table "Payment" (
	id Integer not null , 
	date Date not null , 
	total_price Integer not null , 
	status boolean not null,
	pay_code Integer not null,
	order_id Integer not null ,
	FOREIGN KEY (order_id) REFERENCES "Order" (id)
)

create table "Delivery" (
	id Integer not null , 
	date Date not null , 
	status boolean not null,
	payment_id Integer not null ,
	address_id Integer not null ,
	FOREIGN KEY (payment_id) REFERENCES "Payment" (id)
	FOREIGN KEY (address_id) REFERENCES "Address" (id)

)


--part 2

create table "Manage" (
	id Integer not null , 
	per_id Integer not null , 
	menuItem_id Integer not null ,
	FOREIGN KEY (menuItem_id) REFERENCES "MenuItem" (id)

)


create table "Permission" (
	id Integer not null , 
	user_id Integer not null , 
	per_name varchar(20) not null ,
	FOREIGN KEY (user_id) REFERENCES "User" (id)

)



create table "Comment" (
	user_id Integer not null , 
	menuItem_id Integer not null , 
	FOREIGN KEY (user_id) REFERENCES "User" (id)
	FOREIGN KEY (menuItem_id) REFERENCES "MenuItem" (id)
	PRIMARY KEY (user_id , menuItem_id )
)

create table MenuType (
	id Integer not null , 
	name varchar (20)
)

create table subMenu (
	id Integer not null ,
	type_id Integer not null , 
	FOREIGN KEY (type_id) REFERENCES "MenuType" (id)
	PRIMARY KEY (id)
)








