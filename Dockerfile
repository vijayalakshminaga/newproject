# Use Node.js LTS image
FROM node:18

# Set app directory
WORKDIR \Users\User\Documents\new project

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# App runs on port 3000
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
