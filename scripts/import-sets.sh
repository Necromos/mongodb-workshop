#!/bin/bash

cd test-datasets

for port in {27017..27019}
do
  mongoimport --host localhost --port $port -v -d zips -c zips --file=./zips.json
  cd northwind-mongo
  ./mongo-import.sh $port
  cd ..
done
