FROM node:18-alpine

WORKDIR /app

# Install the latest version globally
RUN npm install -g @upstash/context7-mcp
RUN npm install -g supergateway

# Default command to run the server
CMD ["supergateway", "--stdio", "context7-mcp", "--port", "80"]