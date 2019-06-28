# Replacing PMPID database

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
Use removearrivals.py to remove layover and end of trips arrivals 

Copy and backup old database