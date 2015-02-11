
CREATE TABLE agency(
agency_id int(11),
agency_name varchar(255),
agency_url varchar(255),
agency_timezone varchar(255),
agency_lang varchar(255),
agency_phone varchar(255),
PRIMARY KEY(agency_id)
);

LOAD DATA INFILE '/var/www/google_transit/agency.txt' INTO TABLE agency FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (agency_id,agency_name,agency_url,agency_timezone,agency_lang,agency_phone);

CREATE TABLE calendar(
service_id int(11),
monday tinyint(1),
tuesday tinyint(1),
wednesday tinyint(1),
thursday tinyint(1),
friday tinyint(1),
saturday tinyint(1),
sunday tinyint(1),
start_date varchar(255),
end_date varchar(255)
);

LOAD DATA INFILE '/var/www/google_transit/calendar.txt' INTO TABLE calendar FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (service_id,monday,tuesday,wednesday,thursday,friday,saturday,sunday,start_date,end_date);


CREATE TABLE calendar_dates(
service_id int(11),
date varchar(255),
exception_type int(2)
);

LOAD DATA INFILE '/var/www/google_transit/calendar_dates.txt' INTO TABLE calendar_dates FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (service_id,date,exception_type);


CREATE TABLE stop_times(
trip_id int(11),
arrival_time time,
departure_time time,
stop_id int(11),
stop_sequence int(11),
pickup_type int(2),
drop_off_type int(2)
);

LOAD DATA INFILE '/var/www/google_transit/stop_times.txt' INTO TABLE stop_times FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (trip_id,arrival_time,departure_time,stop_id,stop_sequence,pickup_type,drop_off_type);


CREATE TABLE stops(
stop_id int(11),
stop_code varchar(255),
stop_name varchar(255),
stop_desc varchar(255),
stop_lat decimal(8,6),
stop_lon decimal(8,6),
zone_id int(11),
stop_url varchar(255),
location_type int(2),
parent_station int(11),
wheelchair_accessible int(11),
PRIMARY KEY(stop_id)
);

LOAD DATA INFILE '/var/www/google_transit/stops.txt' INTO TABLE stops FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (stop_id,stop_code,stop_name,stop_desc,stop_lat,stop_lon,zone_id,stop_url,location_type,parent_station,wheelchair_accessible);
