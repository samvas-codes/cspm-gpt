import psycopg2
import os

# find .env automagically by walking up directories until it's found, then
# load up the .env entries as environment variables

load_dotenv(load_dotenv())
dbname = os.getenv("POSTGRES_DB")
user = os.getenv("POSTGRES_USER")
password = os.getenv("POSTGRES_PASSWORD")


conn = psycopg2.connect(host='postgres',
                       port='5432',
                       dbname=dbname,
                       user=user,
                       password=password
                        )

cur = conn.cursor()

# creating cloudquery schema loading data into table
fd = open('cloudquery.sql', 'r')
sqlFile = fd.read()
fd.close()
sqlCommands = sqlFile.split(';')
for command in sqlCommands:
    print(command)
    if command.strip() != '':
        cursor.execute(command)