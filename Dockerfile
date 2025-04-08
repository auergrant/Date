# Use the official Node.js 18 image
FROM node:18

# Set working directory
WORKDIR /app

# Copy only the necessary files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the code
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Start the app
CMD ["node", "date"]
