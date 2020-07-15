SERVICE := linux
 
build:
	docker-compose build
 
up:
	docker-compose up -d

down:
	docker-compose down
	
restart:
	make -s down
	make -s up

console:
	docker-compose exec $(SERVICE) bash
 
clean:
	docker-compose down
	docker system prune --volumes
