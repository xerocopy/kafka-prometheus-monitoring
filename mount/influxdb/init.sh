#!/bin/bash


influx CREATE DATABASE weather; 
influx CREATE RETENTION POLICY one_week ON weather DURATION 168h REPLICATION 1 DEFAULT;



# curl -i -XPOST http://localhost:8086/query --data-urlencode "q=CREATE DATABASE mydb"

# curl -i -XPOST http://localhost:8086/query --data-urlencode "q=CREATE RETENTION POLICY "one_week_only" ON "mydb" DURATION 1w REPLICATION 1 DEFAULT"
