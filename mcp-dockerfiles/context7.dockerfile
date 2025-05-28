FROM node:18-alpine

WORKDIR /app

# Install the latest version globally
RUN npm install -g @upstash/context7-mcp
RUN npm install -g supergateway

# Expose default port if needed (optional, depends on MCP client interaction)
EXPOSE 8000

# Default command to run the server
CMD ["supergateway", "--stdio", "context7-mcp", "--port", "8000"]