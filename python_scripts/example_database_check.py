import cx_Oracle
import config

# Muodostetaan tarvittava sql
sql = 'select column_name, other_column_name ' \
      'from table ' \
      'where column_name = \'some_data\''

# Luodaan yhteys, ajetaan sql ja tarkastetaan tulos
try:
    with cx_Oracle.connect(
                config.username,
                config.password,
                config.dsn,
                encoding="UTF-8") as connection:
        with connection.cursor() as cursor:
            cursor.execute(sql)           
            rows = cursor.fetchall()
            # Tähän halutut tarkastukset
            
except cx_Oracle.Error as error:
    print(error)

