PROJECT_NAME=fee-service

PID = /tmp/$(PROJECT_NAME).pid
LOG_FILE = /tmp/$(PROJECT_NAME).log


build-docker:
	mvn clean install docker:build -Dmaven.test.skip=true -DDOCKER_TAG=latest;

start:
	ENV=local TAG=latest docker-compose up  2>&1 & echo "$$!" >> $(PID) | tee $(LOG_FILE)

stop:
	@if [ -f $(PID) ]; \
	then \
		cat $(PID) | xargs kill; \
		rm $(PID); \
	fi

restart: stop start

help:
	@echo 'Available commands: build, build-docker, start, stop'
	@echo ''
	@echo 'Commands in this Makefile are top level commands to package the final version of the app. For low level commands, see subdirectories.'
	@echo ''

.PHONY: help
