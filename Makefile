all: build
	docker run -d -p 8080:8080 -v $(shell pwd):/usr/src/app containersol/reveal-md

build:
	docker build -t containersol/reveal-md .

push: build
	docker push containersol/reveal-md

kill:
	docker stop $(shell docker ps -aq --filter ancestor=containersol/reveal-md)
	docker rm $(shell docker ps -aq --filter ancestor=containersol/reveal-md)
