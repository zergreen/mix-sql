-- drop database sensordb
-- drop table Location
-- drop table User
-- drop table Employee 
-- drop table Sensor
-- drop table SensorData

CREATE TABLE Location(
	location_id varchar(10) primary key,
	location_name varchar(255),
	location_address varchar(255)
)

CREATE TABLE User(
	user_id varchar(10) primary key,
	username varchar(255),
	first_name varchar(255),
	last_name varchar(255),
	email varchar(255),
	telephone varchar(255)
)

create TABLE Employee(
	employee_id varchar(10) primary key,
	employee_code varchar(10),
	position varchar(255),
	department varchar(255)
)

create table Sensor(
	sensor_id varchar(10) primary key,
	sensor_name varchar(255),
	sensor_type varchar(15),
	location_id varchar(10) ,
	employee_id varchar(10) ,
	user_id varchar(10),
	foreign key (location_id) references Location(location_id),
	foreign key (employee_id) references Employee(employee_id),
	foreign key (user_id) references User(user_id)
)

create table SensorData (
	sensor_data_id varchar(10) primary key,
	sensor_id varchar(10),
	date_time varchar(20),
	temperature varchar(5),
	humidity varchar(5),
	smoke_detection varchar(1),
	pH varchar(5),
	EC varchar(5),
	CO2 varchar(5),
	light_intensity varchar(10),
	second_level varchar(5),
	location_detection varchar(1),
	foreign key (sensor_id) references Sensor(sensor_id)
)

-- insert to location 
insert into Location values('L1','คันนายาว','ปลวกแดง');
insert into Location values('L2','เชิงเนิน','ดุสิต');
insert into Location values('L3','วังตะพาน','ลาดกระบัง');
insert into Location values('L4','ยานนาวา','สวนหลวง');

-- insert to user
insert into User(user_id, username, first_name, last_name, email, telephone)
values 
	('U1','AKA','สมชาย','มีมาก','somchai@gamil.com','0800001234'),
	('U2','Somjai','สมใจ','รักจริง','somchai@gamil.com','0801230000'),
	('U3','Somsri','สมทรง','รักมั่นคง','somsong@gamil.com','09901230000');

-- insert to employee
insert into Employee 
values
	('E1','29572','เขตดุสิต','เขตวังทองหลาง'),
	('E2','10000','เขตลาดกระบัง','เทเวศร์'),
	('E3','20000','เขตจตุจักร','อนุเสาวรีย์ชัย');
	

-- insert to sensor
insert into Sensor values('S1','motion detection sensor','-','L1','E1','U1');
insert into Sensor values('S2','heat sensor','-','L2','E2','U2');
insert into Sensor values('S3','smoke sensor','-','L3','E3','U3');
insert into Sensor values('S4','light censor','Celcius','L2','E1','U1');
insert into Sensor values('S5','touch sensor','%','L3','E2','U1');

-- insert to sensordata
insert into SensorData(sensor_data_id, sensor_id, date_time, temperature, humidity, smoke_detection, pH, EC, CO2, light_intensity, second_level, location_detection)
values 
	('SD1','S1','9/3/2013','76','4','1','10','7.52','70','9498','70','1'),
	('SD2','S2','10/3/2013','86','3','1','10','11.50','70','9498','70','0'),
	('SD3','S3','11/3/2013','56','2','0','10','20.01','70','9498','70','1');

-- test inner join
SELECT Sensor.sensor_id , Sensor.sensor_name , Sensor.sensor_type, Sensor.user_id, Location.location_name , Location.Location_id
FROM Sensor
INNER JOIN Location
ON Sensor.location_id=Location.location_id
WHERE Sensor.user_id='U1';

select * from Location;
select * from User;
select * from Employee;
select * from Sensor;