db_up:
	docker compose -f database/docker-compose.yml build 
	docker compose -f database/docker-compose.yml up

db_down:
	docker compose -f database/docker-compose.yml down

db_restore_backup:
	docker compose -f database/docker-compose.yml run --rm db bash -c "psql -h db -U  postgres  -p 5432  -f /opt/dump/world.sql" 


build_logstash:
	docker compose -f app_logstash/docker-compose.yml build 

etl_logstash:build_logstash
	docker compose -f app_logstash/docker-compose.yml up 

opensearch_up:
	docker compose -f app_opensearch/opensearch.compose.yml build 
	docker compose -f app_opensearch/opensearch.compose.yml up