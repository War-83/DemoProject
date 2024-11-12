# Step 1: Use a Node.js base image
FROM node:14

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy the rest of the application code
COPY . .

# Step 5: Expose the port the app runs on
EXPOSE 3000

# Step 6: Start the application
CMD ["node", "app.js"]
