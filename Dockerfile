# Use Node.js LTS version as the base image
FROM node:14

# Set work directory
WORKDIR /usr/src/node-red

# Copy local Node-RED data into image
COPY . /root/.node-red

# Install Node-RED
RUN npm install -g --unsafe-perm node-red

# Install local dependencies
WORKDIR /root/.node-red
RUN npm install

# Change work directory back
WORKDIR /usr/src/node-red

# Expose port
EXPOSE 1880

# Start Node-RED
CMD ["node-red", "--userDir", "/root/.node-red"]




