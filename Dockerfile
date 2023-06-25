FROM nodered/node-red:latest

# Change to root user for installing packages
USER root

# Copy package.json to the WORKDIR so npm install can access it
COPY package.json .
RUN npm install

# Change user back to node-red
USER node-red

# Copy settings.js to the WORKDIR so node-red can access it
COPY settings.js .

# Copy flows.json to the WORKDIR so node-red can access it
COPY flows.json .

# Copy the rest of the project
COPY . .

CMD ["npm", "start"]



