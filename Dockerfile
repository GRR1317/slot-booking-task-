# Use the official Node.js LTS (Long Term Support) image as base
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install production dependencies
RUN npm ci --only=production

# Copy the rest of the application files to the container
COPY . .

# Build the application (e.g., transpile TypeScript, bundle assets)
RUN npm run build

# Expose the port on which your Node.js app listens (replace 3000 with your app's port)
EXPOSE 3000

# Set any necessary environment variables (if applicable)
# ENV EXAMPLE_ENV_VARIABLE=value

# Specify the command to start your Node.js application (replace "start" with your app's command)
CMD ["npm", "start"]
