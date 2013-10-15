--
-- get data for all rail stops with the count of robberies
--

SELECT row_to_json( row ) from (
	SELECT *, (
		SELECT COUNT(*) 
		FROM incident
		WHERE 
			ST_DWithin( ST_MakePoint( rail_stops.stop_lon,rail_stops.stop_lat ), incident.point, .0015 ) = 't' 
			AND ( 
				   incident.text_general_code LIKE '%Robbery%' 
				OR incident.text_general_code LIKE '%Assault%' 
				OR incident.text_general_code LIKE '%Rape%' 
				OR incident.text_general_code LIKE '%Homicide%' 
			) 
		)
	AS count 
	FROM rail_stops 
) row;