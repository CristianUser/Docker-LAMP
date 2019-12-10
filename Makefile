start:
	docker-compose up -d web db phpmyadmin

stop-services:
	docker-compose stop web db phpmyadmin

remove-containers:
	@echo "Removing all stopped containers..."
	docker-compose rm web db phpmyadmin

burn:
	@echo "Stopping and removing all containers..."
	make stop-services && make remove-containers

default: start