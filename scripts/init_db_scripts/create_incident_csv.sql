-- Table: incident_csv

DROP TABLE incident_csv;

CREATE TABLE incident_csv
(
  id serial primary key,
  dc_dist character varying(255),
  sector character varying(255),
  dispatch_date_time character varying(255),
  dispatch_date character varying(255),
  dispatch_time character varying(255),
  hour character varying(255),
  dc_key character varying(255),
  location_block character varying(255),
  ucr_general character varying(255),
  objectid character varying(255),
  text_general_code character varying(255),
  shape character varying(255),
  point_x double precision,
  point_y double precision
)
WITH (
  OIDS=FALSE
);
ALTER TABLE incident_csv
  OWNER TO opengeo;