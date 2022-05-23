create table customers (
	id INTEGER not NULL,
	firstname varchar(20),
	lastname varchar(20),
	address_id Integer not null,
	foreign key (address_id) references "Address" (id)
	
	

);



CREATE TABLE "Reserves"
(
  sid INTEGER NOT NULL,
  bid INTEGER NOT NULL,
  date DATE NOT NULL,
  PRIMARY KEY (sid , bid , date ),
  FOREIGN KEY (bid) REFERENCES "Boats" (bid),
  FOREIGN KEY (sid) REFERENCES "Sailors" (sid)
);
