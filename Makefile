SERVICE_NAME = node
DOCKER_COMPOSE=docker compose -f docker/docker-compose.yaml

# Docker targets

.PHONY: build-dev
build-dev:
	@$(DOCKER_COMPOSE) build

.PHONY: start
start:
	@$(DOCKER_COMPOSE) up -d --force-recreate

.PHONY: stop
stop:
	@$(DOCKER_COMPOSE) stop

.PHONY: ssh
ssh:
	@$(DOCKER_COMPOSE) exec $(SERVICE_NAME) /bin/sh

# NodeJS targets

.PHONY: build
build:
	@$(DOCKER_COMPOSE) exec $(SERVICE_NAME) npm run build