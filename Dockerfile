# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the HTML, CSS, and other static files
COPY index.html style.css ./

# Copy any other necessary files
COPY .gitattributes README.md ./

# Install an HTTP server to serve the static files
RUN npm install -g http-server

# Expose port 8080 for the server
EXPOSE 8080

# Command to run the server
CMD ["http-server", "-p", "8080"]
