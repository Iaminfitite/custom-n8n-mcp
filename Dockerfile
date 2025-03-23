FROM n8nio/n8n:latest

# Switch to root user to install global npm packages
USER root

# Install both MCP servers (Airtable & Firecrawl)
RUN npm install -g airtable-mcp-server firecrawl-mcp

# Revert to the node user for security purposes
USER node

# Set environment variables for Airtable authentication
ENV AIRTABLE_API_KEY=your_actual_personal_access_token

CMD ["n8n"]
