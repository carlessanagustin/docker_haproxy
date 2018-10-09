# HAProxy on Docker

This repository includes infrastructure as code scripts to run a HAProxy on a Docker environment using Docker Compose for that purpose.

> For more information: [http://www.haproxy.org/](http://www.haproxy.org/)

## Requirements

* Ubuntu
* Make
* Docker Engine
* Docker Compose

## Commands

* [Optional] Install environment on Ubuntu: `make install`
* Start HAProxy: `make up`
* Stop HAProxy: `make down`

## Configuration

HAProxy configuration is in file `haproxy.cfg`. This configuration is ready for http termination. Just replace these lines with the destination server and port you want to send the requests:

```
server worker10 10.132.0.17:31268 check
server worker20 10.132.0.18:31268 check
```

Following the format: `server <server_name> <destination_ip>:<destination_port> check`. Then start HAProxy as indicated in the commands section.

> For more configuration options read the official documentation: [http://www.haproxy.org/#docs](http://www.haproxy.org/#docs)

## License

GNU GPLv3

## Author Information

Carles San Agustin - [https://twitter.com/carlesanagustin](https://twitter.com/carlesanagustin)
