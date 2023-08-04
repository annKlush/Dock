
FROM ubuntu:latest

# Update the package manager and install nginx
RUN apt-get update && apt-get install -y \
    package-bar \
    package-baz \
    package-foo=1.3.*

# Copy the index.html file to the appropriate directory
COPY index.html /var/www/html/index.html  # Fixed typo htm to html

# Expose port 80 for HTTP traffic
EXPOSE 80  # Changed the exposed port to 80 instead of 3000. Only one port should be exposed.

# Start the nginx service
CMD ["nginx", "-g", "daemon off;"]
