#!/bin/bash

for port in {27017..27019}
do
  mongo --port $port zips --eval "db.dropDatabase()"
  mongo --port $port Northwind --eval "db.dropDatabase()"
done
