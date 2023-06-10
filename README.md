# MIX-SQL
[] sensordb-script & full_dataset_python.xlxs is prototype for convert 
excel table 
to create table script in sql <br>

# learn
1. run ทีละ sql script อย่า run ทีเดียว เนื่องจาก มันจะติด fk <br>
2. ที่ Sensor table เราจะไม่สามารถ ใส่ข้อมูลไม่สามารถอ้างอิงได้ เช่น U99 หรือ L99 หรือ E99 เนื่องจาก ในแต่ละ table จะต้องมี U99 หรือ L99 หรือ E99  ก่อน
ถึงจะ insert เข้าไปได้ ไม่งั้นจะติด syntax error fk <br>
3. หากเราทำการ ลบ table Location จะลบไม่ได้ เนื่องจากติด fk 
วิธีแก้ ให้ลบที่ SensorData ก่อน -> Sensor -> Location ตาม step

# Note
- fk (foreign key) จะช่วยให้ database มีประสิทธิ์ภาพมากขึ้น แต่ก็แลกมาด้วยความจุกจิก
- pk ทำให้ยืนยันได้ว่า ในตารางนั้นๆ entity ที่ set pk ไว้จะต้องไม่ซ้ำกัน เช่น id
