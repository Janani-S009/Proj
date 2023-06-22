# Use the alpine version of the node image
FROM node:alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that the application listens on
EXPOSE 8081

# Run the Node.js application
CMD [ "node", "server.js" ]
