INSERT INTO part
	(serial_number, description, price)
VALUES
	('njl12349abva','Zoom zoom tire go fast', 59.99),
	('nblakj8143bt','Honk honk new horn for you', 45.99);
	

INSERT INTO salesperson
	(first_name, last_name)
VALUES
	('Doug','Judy'),
	('Pontiac','Bandit');
	

INSERT INTO customer
	(first_name, last_name, phone_number, address, billing_info)
VALUES
	('Amy','Santiago','123-555-6789','321 Main St, America', '98124711342'),
	('Jake','Peralta','123-555-9876','231 Other St, Canada', '19023490123');
	
INSERT INTO mechanic
	(first_name, last_name)
VALUES
	('Charles','Boyle'),
	('Rosa','Diaz');
	
INSERT INTO labor_type
	("type",hourly_rate)
VALUES
	('tire replacement', 15.99),
	('horn testing', 6.99);
	

INSERT INTO invoice
	(vehicle_id, customer_id, salesperson_id, invoice_date)
VALUES
	(2,1,2,'2022-12-5'),
	(1,2,1,'2022-12-4');


INSERT INTO ticket
	(vehicle_id, customer_id, date_received, date_returned, customer_comment)
VALUES
	(2,1,'2022-11-2','2022-11-5','horn no honk'),
	(1,2,'2019-12-3','2019-12-10','tire no spin');


INSERT INTO parts_used
	(ticket_id, part_id, quantity)
VALUES
	(2,2,1),
	(1,1,4);
	

INSERT INTO labor
	(ticket_id, mechanic_id,labor_type_id,hours,mech_comment)
VALUES
	(1,2,1,20,'fixed thing'),
	(2,1,2,100,'honk honk work now');
