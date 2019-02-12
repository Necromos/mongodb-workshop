run:
	docker-compose up

kill:
	docker ps -q | xargs docker kill

populate-dbs:
	chmod +x scripts/import-sets.sh
	sh scripts/import-sets.sh

drop-dbs:
	chmod +x scripts/drop-dbs.sh
	sh scripts/drop-dbs.sh

prepare-submodules:
	git submodule init
	git submodule update
