# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose port (Fly defaults to 8080)
EXPOSE 8080

# Start the app
CMD ["node", "server.js"]
