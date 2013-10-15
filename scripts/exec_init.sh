user=opengeo
database=septa_dev
host=107.20.176.81

dropdb -h $host -U$user $database
createdb -h $host -U$user $database
psql -h $host -U$user $database < init_db.sql
