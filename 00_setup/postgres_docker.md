# Local Postgres (Docker)

## Start
docker compose -f 00_setup/docker-compose.yml up -d

## Postgres connection
Host: localhost  
Port: 5432  
Database: sql_practice  
Credentials: see `.env` file (local only)

## pgAdmin (optional)
URL: http://localhost:5050  
Login: configured locally

## Stop
docker compose -f 00_setup/docker-compose.yml down
