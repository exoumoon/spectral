default:
    @just --list

refresh:
    packwiz refresh
    @git add .
    @git status

start:
    docker compose up --detach --build
    docker compose logs --follow

stop:
    docker compose down

restart: stop start

export: refresh
    packwiz modrinth export --output Spectral.mrpack
