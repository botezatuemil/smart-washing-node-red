# Use the official Node-RED image as a base
FROM nodered/node-red:latest

# Change the working directory in the Docker image to where Node-RED expects to find the flows
WORKDIR /usr/src/node-red

# Copy your Node-RED project files into the Docker image
COPY . .

# Run npm install to fetch the project dependencies
RUN npm install

# Run Node-RED
CMD ["npm", "start"]


