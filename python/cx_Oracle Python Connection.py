Connecting to Oracle DB with Python
This article for reference
https://www.oracle.com/technetwork/articles/dsl/prez-python-queries-101587.html


start a python shell
python37 (for 64bit python, same as oracle express 11g 64bit)



import cx_Oracle

dsn_tns = cx_Oracle.makedsn('localhost', 1521, service_name='xe')
db = cx_Oracle.connect(user=r'hr', password='admin', dsn=dsn_tns)

cursor = db.cursor()

cursor.execute('SELECT * FROM jobs')