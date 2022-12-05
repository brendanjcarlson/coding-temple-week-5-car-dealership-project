CREATE OR REPLACE FUNCTION createVehicle(
	_serial_number varchar(255),
	_make varchar(255),
	_model varchar(255),
	_color varchar(255),
	_year date,
	_for_sale boolean,
	_new boolean
	) 
RETURNS VOID AS
$$
BEGIN
    INSERT INTO vehicle(
   		serial_number, make, model, color, "year",for_sale,"new") 
   	VALUES (
   		_serial_number, _make, _model, _color, _year, _for_sale, _new);
END
$$
LANGUAGE 'plpgsql';


SELECT createVehicle('asdf1234', 'Ford','Raptor','Red','2023-12-01', TRUE, TRUE)

SELECT createVehicle('fasd4132', 'Dodge','Ram','Blue','2019-11-01', TRUE, False)