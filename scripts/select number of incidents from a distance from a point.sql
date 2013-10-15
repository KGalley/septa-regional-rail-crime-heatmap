--
-- select all incidents that happen within .0015 of point 
--
SELECT COUNT(*) FROM incident WHERE ST_DWithin( ST_MakePoint(-75.164352,39.972153), incident.point, .0015 ) = 't'
