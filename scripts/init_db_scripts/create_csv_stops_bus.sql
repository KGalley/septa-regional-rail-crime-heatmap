-- Table: incident_csv

DROP TABLE IF EXISTS  csv_stops_bus;

CREATE TABLE csv_stops_bus
(
  id serial primary key,
  stop_id character varying(255),
	    stop_name character varying(255),
	    stop_lat double precision,
	    stop_lon double precision,
	    location_type character varying(255),
	    parent_station character varying(255),
	    zone_id character varying(255),
	    wheelchair_boarding character varying(255)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE csv_stops_bus
  OWNER TO opengeo;