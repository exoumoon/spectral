default:
    @just --list

refresh:
    packwiz refresh
    @git add .
    @git status

export: refresh
    packwiz modrinth export
