# Use the official Node.js image with version 20 as the base image
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY package*.json yarn.lock ./

# Install dependencies using Yarn
RUN yarn install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the default Strapi port
EXPOSE 1337

# Start the Strapi development server
CMD ["yarn", "run", "develop"]
