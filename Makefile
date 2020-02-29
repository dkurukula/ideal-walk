.PHONY:
	build
	dev
	clean
	fresh


# Build all the containers
build:
	docker-compose build

# Spin up the containers and network
dev:
	docker-compose up

# Delete the containers and network
clean:
	docker-compose rm -f

# Build all containers and start them
fresh: build dev
