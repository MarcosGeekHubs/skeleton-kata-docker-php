default:
	@printf "$$HELP"


# Docker commands
docker-build:
	docker-compose up -d
	@docker exec -it kata-test bash -c "composer install --prefer-source --no-interaction"

docker-down:
	docker-compose down

docker-start:
	docker-compose up -d

docker-tests:
	@docker exec -it kata-test bash -c "./bin/phpunit"

docker-coverage:
	@docker exec -it kata-test bash -c "./bin/phpunit --coverage-text"

docker-ssh:
	@docker exec -it kata-test bash

define HELP
# Docker
	- default:
	- docker-build:
	- docker-stop
	- docker-down:
	- docker-start:
	- docker-tests:
	- docker-coverage:
	- docker-ssh:

endef

export HELP