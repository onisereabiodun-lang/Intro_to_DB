#!/usr/bin/python3
import mysql.connector

try:
    # Connect to MySQL server
    db = mysql.connector.connect(
        host="localhost",
        user="root",
        password="YOUR_MYSQL_PASSWORD"
    )

    cursor = db.cursor()

    # Create database if it does not exist
    cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as e:
    print(f"Error connecting to MySQL: {e}")

finally:
    if 'cursor' in locals():
        cursor.close()
    if 'db' in locals() and db.is_connected():
        db.close()

