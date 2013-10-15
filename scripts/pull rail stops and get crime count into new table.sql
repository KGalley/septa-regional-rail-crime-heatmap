--asdfasdfSELECT * FROM incident, rail_stops WHERE ST_DWithin( ST_MakePoint( rail_stops.stop_lon,rail_stops.stop_lat ), incident.point, .05 ) = 't' AND incident.text_general_code LIKE '%Robbery%';

SELECT *, (
	SELECT COUNT(*) FROM incident WHERE ST_DWithin( ST_MakePoint( rail_stops.stop_lon,rail_stops.stop_lat ), incident.point, 1 ) = 't' AND incident.text_general_code LIKE '%Robbery%' AND rail_stops.id = 5
	) AS count 
FROM rail_stops;