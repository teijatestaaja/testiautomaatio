import cx_Oracle
import sys

# Luodaan yhteys         päivitä tiedot username/password@host/SID
print("Python versio: ")
print(sys.version)
conn = cx_Oracle.connect('username/password@host/SID')

# Testataan toimivuus
print("Tietokannan versio: ")
print(conn.version)

# Suljetaan yhteys
conn.close()
