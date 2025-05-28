mcp-bridge-up:
	docker compose -f MCP-Bridge/compose.yml up

mcp-bridge-down:
	docker compose -f MCP-Bridge/compose.yml down

dify-up:
	docker compose --env-file dify/.env -f dify/docker/docker-compose.yaml up

dify-down:
	docker compose -f dify/docker/docker-compose.yaml down

context7-build:
	docker build -f mcp-containers/context7.dockerfile -t mcp-context7 .

context7-run:
	docker run -d -i --rm -p 3000:8000 --name mcp-context7 --network mcp-network mcp-context7

context7-stop:
	docker stop mcp-context7

.PHONY: mcp-bridge-up mcp-bridge-down dify-up dify-down context7-build context7-run context7-stop
