start:
	docker-compose up -d www db phpmyadmin

stop-services:
	docker-compose stop www db phpmyadmin

remove-containers:
	@echo "Removing all stopped containers..."
	docker-compose rm www db phpmyadmin

burn:
	@echo "Stopping and removing all containers..."
	make stop-services && make remove-containers

default: start