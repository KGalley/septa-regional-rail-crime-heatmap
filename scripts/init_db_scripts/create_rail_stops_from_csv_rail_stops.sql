drop table IF EXISTS rail_stops;
CREATE TABLE rail_stops (
    id serial PRIMARY KEY,
    stop_id varchar(255),
    stop_name varchar(255),
    stop_desc varchar(255),
    stop_lat double precision,
    stop_lon double precision,
    zone_id varchar(255),
    point geometry
);

INSERT INTO rail_stops (
    stop_id,
    stop_name,
    stop_desc,
    stop_lat,
    stop_lon,
    zone_id,
    point
    ) (SELECT 
        stop_id,
	    stop_name,
        stop_desc,
	    stop_lat,
	    stop_lon,
	    zone_id,
	ST_MakePoint(stop_lat,stop_lon)
	FROM csv_rail_stops
	);