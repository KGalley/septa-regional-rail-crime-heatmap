DROP TABLE IF EXISTS  csv_rail_stops;

CREATE TABLE csv_rail_stops
(
    id serial primary key,
    stop_id character varying(255),
    stop_name character varying(255),
    stop_desc character varying(255),
    stop_lat double precision,
    stop_lon double precision,
    zone_id character varying(255)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE csv_rail_stops
  OWNER TO opengeo;