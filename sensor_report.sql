CREATE TABLE SensorReport (
	sensor_id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	sensor_name varchar(255),
	sensor_type varchar(10),
	location_name varchar(255),
	location_address varchar(255),
	username varchar(255),
	first_name varchar(255),
	last_name varchar(255),
	email varchar(255),
	telephone varchar(255),
	employee_code varchar(255),
	position varchar(255),
	department varchar(255)
)

-- INSERT INTO SensorReport(sensor_id,sensor_name,sensor_type,location_name,location_address,username,first_name,last_name,email,telephone,employee_code,position,department)
-- VALUES (1,'motion detection sensor','-','คันนายาว','ปลวกแดง','Aka','วัชรารัตน์','อรุณรัตน์','test@gmail.com',897951101,29572,'เขตดุสิต','เขตวังทองหลาง');

DROP TABLE SensorReport

INSERT INTO SensorReport
VALUES (Null,'motion detection sensor','-','คันนายาว','ปลวกแดง','Aka','วัชรารัตน์','อรุณรัตน์','test@gmail.com','897951101','29572','เขตดุสิต','เขตวังทองหลาง');

SELECT * FROM SensorReport;