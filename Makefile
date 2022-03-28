install:
	docker-compose pull
	docker-compose build
	docker-compose rm -v --force
	docker-compose up -d --force-recreate
	docker exec -ti cms yarn install
	docker exec -ti site npm install
	docker-compose stop

start:
	docker-compose up -d

stop:
	docker-compose down

cms_shell:
	docker exec -ti cms zsh

cms_dev:
	docker exec -ti cms npm run develop

cms_build:
	docker exec -ti cms npm run build

site_start:
	docker exec -ti site npm run start

site_shell:
	docker exec -ti site zsh

site_dev:
	docker exec -ti site npm run dev -- --host

site_build:
	docker exec -ti site npm run build

site_start:
	docker exec -ti site npm run start