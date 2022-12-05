CREATE TABLE part (
	part_id serial PRIMARY KEY,
	serial_number varchar(255) NOT NULL, 
	description varchar(1000),
	price float NOT NULL
);

CREATE TABLE vehicle (
	vehicle_id serial PRIMARY KEY,
	serial_number varchar(255) UNIQUE NOT NULL,
	make varchar(255) NOT NULL,
	model varchar(255) NOT NULL,
	color varchar(255) NOT NULL,
	"year" date NOT NULL,
	for_sale boolean NOT NULL,
	"new" boolean NOT NULL
);

CREATE TABLE salesperson (
	salesperson_id serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL
);

CREATE TABLE mechanic (
	mechanic_id serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL
);

CREATE TABLE labor_type (
	labor_type_id serial PRIMARY KEY,
	"type" varchar(255) NOT NULL,
	hourly_rate float NOT NULL
);

CREATE TABLE customer (
	customer_id serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	phone_number varchar(50),
	address varchar(255) NOT NULL,
	billing_info varchar(255) NOT NULL
);

CREATE TABLE ticket (
	ticket_id serial PRIMARY KEY,
	vehicle_id integer REFERENCES vehicle(vehicle_id),
	customer_id integer REFERENCES customer(customer_id),
	date_received date NOT NULL,
	date_returned date NOT NULL,
	customer_comment varchar(1000)
);

CREATE TABLE invoice (
	invoice_id serial PRIMARY KEY,
	vehicle_id integer REFERENCES vehicle(vehicle_id),
	customer_id integer REFERENCES customer(customer_id),
	salesperson_id integer REFERENCES salesperson(salesperson_id),
	invoice_date date NOT NULL
);


CREATE TABLE parts_used (
	parts_used_id serial PRIMARY KEY,
	ticket_id integer REFERENCES ticket(ticket_id),
	part_id integer REFERENCES part(part_id),
	quantity integer NOT NULL
);

CREATE TABLE labor (
	labor_id serial PRIMARY KEY,
	ticket_id integer REFERENCES ticket(ticket_id),
	mechanic_id integer REFERENCES mechanic(mechanic_id),
	labor_type_id integer REFERENCES labor_type(labor_type_id),
	hours float NOT NULL,
	mech_comment varchar(1000)
);