db_up:
	docker compose -f database/docker-compose.yml build 
	docker compose -f database/docker-compose.yml up

db_down:
	docker compose -f database/docker-compose.yml down

db_restore_backup:
	docker compose -f database/docker-compose.yml run --rm db bash -c "psql -h db -U  postgres  -p 5432  -f /opt/dump/world.sql" 
