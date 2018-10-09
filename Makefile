docker_compose_version ?= 1.22.0

requirements:
	apt-get update
	apt-get -y install make

install:
	apt-get update
	apt-get -y install curl docker.io
	curl \
	  -L "https://github.com/docker/compose/releases/download/${docker_compose_version}/docker-compose-$(uname -s)-$(uname -m)" \
	  -o /usr/local/bin/docker-compose
	chmod +x /usr/local/bin/docker-compose

up:
	docker-compose up -d

down:
	docker-compose down
