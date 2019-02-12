run:
	docker-compose up

kill:
	docker ps -q | xargs docker kill

populate-dbs:
	chmod +x import-sets.sh
	sh import-sets.sh

drop-dbs:
	chmod +x drop-dbs.sh
	sh drop-dbs.sh
