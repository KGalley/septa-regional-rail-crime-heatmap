SELECT *, (
	SELECT COUNT(*) FROM incident WHERE ST_DWithin( ST_MakePoint( stops_bus.stop_lon,stops_bus.stop_lat ), incident.point, .0015 ) = 't'
	) AS count 
FROM stops_bus;