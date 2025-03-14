FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 80

# Use the official NGINX image
FROM nginx:alpine

# Copy the HTML, CSS, and JS files to the NGINX directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Expose port 80
EXPOSE 80