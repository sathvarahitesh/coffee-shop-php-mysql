import mysql.connector as mysql
mydb = mysql.connect(
    host="localhost",
    user="root",
    password="",
    database="company"
    )
mycursor = mydb.cursor()
mycursor.execute("SHOW TABLES")
tables=mycursor.fetchall()
for x in tables:
    print(x)