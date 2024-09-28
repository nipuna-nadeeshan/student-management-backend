# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory inside the container
WORKDIR /

# Copy package.json and package-lock.json files to install dependencies
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that the app will run on
EXPOSE 3000

# Define environment variable (optional)
ENV NODE_ENV=production

# Command to run the application
CMD ["node", "index.js"]
