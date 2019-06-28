DROP TABLE IF EXISTS `calendar`;
CREATE TABLE `calendar` (
  `service_id` int(11) DEFAULT NULL,
  `monday` int(11) DEFAULT NULL,
  `tuesday` int(11) DEFAULT NULL,
  `wednesday` int(11) DEFAULT NULL,
  `thursday` int(11) DEFAULT NULL,
  `friday` int(11) DEFAULT NULL,
  `saturday` int(11) DEFAULT NULL,
  `sunday` int(11) DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `routes`;
CREATE TABLE `routes` (
  `route_id` int(11) PRIMARY KEY,
  `agency_id` int(11) DEFAULT NULL,
  `route_short_name` varchar(80) DEFAULT NULL,
  `route_long_name` varchar(225) DEFAULT NULL,
  `route_desc` varchar(500) DEFAULT NULL,
  `route_type` int(11) DEFAULT NULL,
  `route_url` varchar(225) DEFAULT NULL,
  `route_color` varchar(10) DEFAULT NULL,
  `route_text_color` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `stop_times`;
CREATE TABLE `stop_times` (
  `trip_id` varchar(20) DEFAULT NULL,
  `arrival_time` varchar(8) DEFAULT NULL,
  `departure_time` varchar(8) DEFAULT NULL,
  `stop_id` int(11) DEFAULT NULL,
  `stop_sequence` int(11) DEFAULT NULL,
  `stop_headsign` int(11) DEFAULT NULL,
  `pickup_type` int(11) DEFAULT NULL,
  `drop_off_type` int(11) DEFAULT NULL,
  `shape_dist_traveled` decimal(8,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `stops`;
CREATE TABLE `stops` (
  `stop_id` int(11) PRIMARY KEY,
  `stop_code` int(11) DEFAULT NULL,
  `stop_name` varchar(225) DEFAULT NULL,
  `stop_desc` varchar(225) DEFAULT NULL,
  `stop_lat` decimal(9,6) DEFAULT NULL,
  `stop_lon` decimal(9,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `trips`;
CREATE TABLE `trips` (
  `route_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `trip_id` varchar(20) PRIMARY KEY,
  `trip_headsign` varchar(225) DEFAULT NULL,
  `direction_id` int(11) DEFAULT NULL,
  `block_id` int(11) DEFAULT NULL,
  `shape_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOAD DATA LOCAL INFILE './gtfs/calendar.txt' INTO TABLE calendar FIELDS TERMINATED BY ',' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE './gtfs/routes.txt' INTO TABLE routes FIELDS TERMINATED BY ',' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE './gtfs/stop_times.txt' INTO TABLE stop_times FIELDS TERMINATED BY ',' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE './gtfs/stops.txt' INTO TABLE stops FIELDS TERMINATED BY ',' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE './gtfs/trips.txt' INTO TABLE trips FIELDS TERMINATED BY ',' IGNORE 1 LINES;
