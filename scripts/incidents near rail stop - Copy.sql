--
-- get crimes of defined types within a distance from the Suburban Station regional rail stop
--

SELECT row_to_json(incident.*)
FROM incident, rail_stops 
WHERE 
	ST_DWithin( ST_MakePoint( rail_stops.stop_lon,rail_stops.stop_lat ), incident.point, .0015 ) = 't' 
	AND ( 
		   incident.text_general_code LIKE '%Robbery%' 
		OR incident.text_general_code LIKE '%Assault%' 
		OR incident.text_general_code LIKE '%Rape%' 
		OR incident.text_general_code LIKE '%Homicide%' 
	) 