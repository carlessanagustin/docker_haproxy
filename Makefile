docker_compose_version ?= 1.22.0

install:
	sudo apt-get update
	sudo apt-get -y install curl docker.io
	sudo curl \
	  -L "https://github.com/docker/compose/releases/download/${docker_compose_version}/docker-compose-$(uname -s)-$(uname -m)" \
	  -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose

up:
	docker-compose up -d

down:
	docker-compose down
