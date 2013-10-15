drop table IF EXISTS stops_bus;
CREATE TABLE stops_bus (
    id serial PRIMARY KEY,
    stop_id varchar(255),
    stop_name varchar(255),
    stop_lat double precision,
    stop_lon double precision,
    location_type varchar(255),
    parent_station varchar(255),
    zone_id varchar(255),
    wheelchair_boarding varchar(255),
    point geometry
);

INSERT INTO stops_bus (
    stop_id,
    stop_name,
    stop_lat,
    stop_lon,
    location_type,
    parent_station,
    zone_id,
    wheelchair_boarding,
    point
    ) (SELECT 
	stop_id,
	    stop_name,
	    stop_lat,
	    stop_lon,
	    location_type,
	    parent_station,
	    zone_id,
	    wheelchair_boarding,
	ST_MakePoint(stop_lat,stop_lon)
	FROM csv_stops_bus
	);