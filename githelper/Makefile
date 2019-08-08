# SHELL=/bin/bash

TARGET_VERSION ?= latest

all: docker

docker:
	docker build -t antidotelabs/githelper:$(TARGET_VERSION) .
	docker push antidotelabs/githelper:$(TARGET_VERSION)
