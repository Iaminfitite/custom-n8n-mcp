# Use the latest n8n image
FROM n8nio/n8n:latest

# Switch to root user to install global npm packages
USER root

# Install both MCP servers (Airtable & Firecrawl)
RUN npm install -g airtable-mcp-server firecrawl-mcp

# Revert to the node user for security purposes
USER node

# Set environment variables for Airtable authentication
ENV AIRTABLE_API_KEY=patMN1zeZEGWdEitP.8ce8db7e368e28c4e17243af725247eecc78d680a8149577e5974c1719d6da9c

# Start n8n on container run
CMD ["n8n"]
