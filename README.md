﻿# Replacing PMPID database

## 1. Get new GTFS export, files needed
- calendar
- routes
- stop_times
- stops
- trips

## 2. Make sure 
- routes have leading zeroes removed in route.txt & trips.txt
  - 01 -> 1
- operator abbreviations have been removed in stops.txt e.g. FS/NB
- stops are camelCased
- there are whitespaces for single digits in stop_times.txt
  ,1:00:00 should be , 1:00:00 (notice whitespace after comma)

## 3. Use python script to remove arrivals
Use [removearrivals.py](https://github.com/joordan/gtfs-layover-fix) to remove layover and end of trips arrivals 

Create database  
`mysql -u (my_db_username) -p -e 'CREATE DATABASE (my_db_name)'`

`wget https://github.com/joordan/import-gtfs-to-mysql/blob/master/import-gtfs-mysql.sh`  
run shell script and follow prompts
