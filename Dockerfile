# Use official Nginx as base image
FROM nginx:latest

# Remove default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your app files to Nginx directory
COPY ./index.html /usr/share/nginx/html

# Expose port 80 (for internal traffic)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
