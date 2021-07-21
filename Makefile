all:
	docker-compose -f srcs/docker-compose.yml up -d

up: all

down:
	docker-compose -f srcs/docker-compose.yml down

ps:
	docker-compose -f srcs/docker-compose.yml ps
