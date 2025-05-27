MCP-Bridge-up:
	docker compose -f MCP-Bridge/compose.yml up

MCP-Bridge-down:
	docker compose -f MCP-Bridge/compose.yml down

dify-up:
	docker compose --env-file dify/.env -f dify/docker/docker-compose.yaml up

dify-down:
	docker compose -f dify/docker/docker-compose.yaml down

.PHONY: MCP-Bridge-up MCP-Bridge-down dify-up dify-down
