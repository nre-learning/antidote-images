# SHELL=/bin/bash

TARGET_VERSION ?= latest

all: docker

docker:
	docker build -t antidotelabs/deployer:$(TARGET_VERSION) .
	docker push antidotelabs/deployer:$(TARGET_VERSION)
