CREATE TABLE car_data (
	id serial primary key,
	comp_name varchar(150) not null,
	car_model varchar(150) not null,
	fuel_type varchar(50) not null,
	price int default 0,
	warranty_years int default 0,
	unit_sold int default 0,
	safe boolean default false
)

select * from car_data

INSERT INTO car_data (comp_name, car_model, fuel_type, price, warranty_years, unit_sold, safe) VALUES
('Maruti Suzuki', 'Swift', 'Petrol', 550000, 2, 15000, true),
('Hyundai', 'Creta', 'Diesel', 1000000, 3, 12000, true),
('Tata', 'Nexon', 'Petrol', 800000, 2, 18000, true),
('Mahindra', 'XUV500', 'Diesel', 1500000, 3, 5000, true),
('Honda', 'City', 'Petrol', 1200000, 4, 10000, true),
('Toyota', 'Innova', 'Diesel', 1800000, 5, 8000, true),
('Ford', 'Ecosport', 'Petrol', 900000, 3, 7000, true),
('Renault', 'Kwid', 'Petrol', 450000, 2, 20000, true),
('Kia', 'Seltos', 'Diesel', 1300000, 3, 14000, true),
('MG', 'Hector', 'Petrol', 1400000, 4, 6000, true)

select * from car_data

copy car_data from 'C:\Program Files/PostgreSQL/16/data/backup/car_data.csv' DELIMITER ',' CSV header
