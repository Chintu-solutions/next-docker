# Use the official Node.js image as the base
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN yarn install

# Copy the entire project
COPY . .

# Build the Next.js app
RUN yarn run build

# Expose the port on which the app will run
EXPOSE 3000

# Start the app
CMD ["yarn", "dev"]