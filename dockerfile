# Step 1: Base Image
FROM node:18

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application code
COPY . .

# Step 6: Expose the port
EXPOSE 5000

# Step 7: Start the application using PM2
CMD ["npx", "pm2-runtime", "app.js"]
