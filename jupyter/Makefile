# SHELL=/bin/bash

TARGET_VERSION ?= latest

all: docker

docker:
	docker build -t antidotelabs/jupyter:$(TARGET_VERSION) .
	docker push antidotelabs/jupyter:$(TARGET_VERSION)
