# Use the official Node.js image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install the Node.js dependencies
RUN npm install

# Rebuild native modules for the correct architecture
RUN npm rebuild

# Copy the rest of the application files into the container
COPY . .

# The script will run and then the container will exit
CMD ["node", "index.js"]
