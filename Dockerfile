# Use the official NGINX image
FROM nginx:alpine

# Copy all website files into NGINX’s default directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY rolly.jpg /usr/share/nginx/html/
COPY bark.mp3 /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
