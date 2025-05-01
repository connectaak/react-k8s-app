# This uses multi-stage builds to keep your final image small and production-ready.
# Stage 1: Build the React app
FROM node:alpine AS builder
# Set working directory inside the container
WORKDIR /client
# Copy package.json and package-lock.json
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application code
COPY . .
# Build the React app
RUN npm run build

# Stage 2: Serve the app with Nginx
FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY client/dist /usr/share/nginx/html
#COPY nginx.conf /etc/nginx/conf.d/default.conf
# Expose port 80
EXPOSE 80
# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
