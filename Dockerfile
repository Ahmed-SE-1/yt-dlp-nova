# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Set environment port
ENV PORT 8080

# Expose the port Fly.io expects
EXPOSE 8080

# Start the app
CMD [ "npm", "start" ]
