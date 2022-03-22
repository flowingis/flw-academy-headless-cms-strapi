install:
	docker-compose pull
	docker-compose build
	docker-compose rm -v --force
	docker-compose up -d --force-recreate
	docker exec -ti cms yarn install
	docker-compose stop

start:
	docker-compose up -d

cms_shell:
	docker exec -ti cms zsh

cms_dev:
	docker exec -ti cms npm run develop

cms_build:
	docker exec -ti cms npm run build

cms_start:
	docker exec -ti cms npm run start