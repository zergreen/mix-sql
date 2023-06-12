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

# CSV to Database
*เป็นการ insert ข้อมูล ลง database เท่านั้น <br>
**สิ่งที่ต้องมีก่อนการ run ได้แก่ 

>sql : sensor_report.sql <br>
python: main.py <br>
csv: full_dataset_python.csv

สร้างตารางก่อน ด้วย script [sensor_report.sql] <br>
จากนั้น run python ด้วย
```python main.py ```
กลับไปดูที่ database จะเห็นว่า ข้อมูลได้ทำการเพิ่มเข้ามาแล้ว
![sensor_report](https://cdn.discordapp.com/attachments/1091751514646777887/1117788910781730936/image.png)

# Demo
output จากการ run <br>
![sensor-db](https://cdn.discordapp.com/attachments/1067458504014708767/1117135491884662945/sensor-db.png)