FROM ubuntu:latest

# Update the package manager and install nginx
RUN apt-get update && apt-get -y install nginx

# Copy the index.html file to the appropriate directory
COPY index.htm /var/www/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the nginx service
CMD ["nginx", "-g", "daemon off;"]
