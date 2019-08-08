# SHELL=/bin/bash

TARGET_VERSION ?= latest

all: docker

docker:
	docker build -t antidotelabs/configurator:$(TARGET_VERSION) .
	docker push antidotelabs/configurator:$(TARGET_VERSION)
