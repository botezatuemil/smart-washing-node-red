# Use the official Node.js 12 image.
# https://hub.docker.com/_/node
FROM node:12

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
# Copying this first prevents re-running npm install on every code change.
COPY package*.json ./

# Install production dependencies.
RUN npm install --only=production

# Copy local code to the container image.
COPY . .

# Start Node-RED
CMD [ "./node-red" ]
