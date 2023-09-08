# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to the container
COPY package*.json ./

# Install project dependencies
RUN npm install
# or
# RUN yarn install

# Copy the rest of the application code to the container
COPY . .

# Expose a port if your application requires it
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
# or
# CMD ["yarn", "start"]
