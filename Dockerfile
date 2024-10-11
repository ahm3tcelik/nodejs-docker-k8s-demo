# Set the base image to use for your Node.js application
FROM registry.uygunsoft.online/node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port on which your Express.js app listens
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
