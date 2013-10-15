SELECT point FROM stops_bus;

SELECT * FROM incident WHERE ST_Contains( incident.point, ST_Buffer( a.point, 10 ) ) in (SELECT point FROM stops_bus as a ) ;