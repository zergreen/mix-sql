import pandas as pd
import mysql.connector

# Connect to the MySQL database
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="sensordb"
)

# Create a cursor object to execute SQL queries
cursor = db.cursor()

# Read the CSV file
df = pd.read_csv('full_dataset_python.csv')

# Iterate over the data and execute INSERT statements
for _, row in df.iterrows():

    # Extract values from the current row if have comma and space
    sensor_name = row['sensor_name'].replace(' ', '').replace(',', '')

    # Extract values from the current row
    sensor_type = row['sensor_type']
    location_name = row['location_name']
    location_address = row['location_address']
    username = row['username']
    first_name = row['first_name']
    last_name = row['last_name']
    email = row['email']
    telephone = int(row['telephone'])
    employee_code = int(row['employee_code'])
    position = row['position']
    department = row['department']

    # Construct the SQL query
    sql = "INSERT INTO SensorReport VALUES (Null, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"

    # Execute the query with the current values
    cursor.execute(sql, (sensor_name, sensor_type, location_name, location_address, username, first_name, last_name, email, telephone, employee_code, position, department))

# Commit the changes to the database
db.commit()

# Close the cursor and database connection
cursor.close()
db.close()