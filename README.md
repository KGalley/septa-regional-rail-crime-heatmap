This was my first attempt to mash up Septa transit locations with crime data.

The first step was to use PostGres 9.2 to 

The SQL scripts are under scripts.

The PostGis SQL highlight of the endeavor follows, which joins the septa and crime data together  and returns incident counts associated with the rail stops.
```
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
```


The html mashup is under src.

The live demo is located at <a href="http://jimrsmiley.github.io/septa-regional-rail-crime-heatmap/">http://jimrsmiley.github.io/septa-regional-rail-crime-heatmap/</a>

A few notes:

Airport crime data didn't seem to come through, given the regional rail lat, lng.

Hat Tip to <a href="http://www.davewalk.net/">Dave Walk</a>'s <a href="http://www.phlcrimemapper.com/">PHL Crime Mapper</a>, who's theme I totally ripped off.