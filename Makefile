DEFAULT_GOAL := up
DC := docker compose
DF := docker-compose.yml

up:
	$(DC) -f $(DF) up -d

down:
	$(DC) -f $(DF) down

r:
	$(DC) -f $(DF) restart vector

re: down up
