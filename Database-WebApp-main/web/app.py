from flask import Flask, render_template, request
from flaskext.mysql import MySQL
import mysql.connector
import os

app = Flask(__name__)
mysql = MySQL()

# MySQL configurations
# app.config['MYSQL_DATABASE_USER'] = 'gbs0116'
app.config['MYSQL_DATABASE_PASSWORD'] = 'Milo123324'
app.config['MYSQL_DATABASE_DB'] = 'gbs0116'
app.config['MYSQL_DATABASE_HOST'] = 'academicmysql.mysql.database.azure.com'
app.config['MYSQL_DATABASE_PORT'] = 3306
app.config['MYSQL_DATABASE_USER'] = 'gbs0116'
   

mysql.init_app(app)

# db_config = {
#     'host': 'academicmysql.mysql.database.azure.com',
#     'port': 3306,
#     'password': 'Milo123324',
#     'database': 'gbs0116'
# }

# conn = mysql.connector.connect(**db_config)
# cursor = conn.cursor()
# print('hello')
# cursor.execute('SELECT * FROM PET;')
# result = cursor.fetchall()
# print(result)



@app.route('/')
def home():
    return render_template('index.html')

@app.route('/execute_query')
def execute_query():
    # Get SQL query from the request parameters
    sql_query = request.args.get('sql_query')
    # sql_query = """
    #     SELECT p.Pet_Name, p.Age, b.Breed_Name, l.City, l.State, l.Country
    #     FROM PET p
    #     JOIN BREED b ON p.Breed_ID = b.Breed_ID
    #     JOIN LOCATION l ON p.Location_ID = l.Location_ID
    #     WHERE p.Availability_Status = TRUE;
    # """
    try:
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute(sql_query)  # Execute the SQL query
        result = cursor.fetchall()  # Fetch all rows returned by the query
        cursor.close()
        conn.close()
        # Format result as string
        result_str = '\n'.join(map(str, result))
        return result_str
    except Exception as e:
        # If an error occurs during execution, return the error message
        return "Error executing query: " + str(e)

if __name__ == '__main__':
    app.run(debug=True)
    app.run(port=int(os.environ.get('PORT', 3000)))
