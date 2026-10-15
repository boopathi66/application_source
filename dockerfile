FROM nginx:alpine

# Copy the HTML application files into the default Nginx web root directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the container network
EXPOSE 80

# Basic health check verification endpoint
HEALTHCHECK --interval=5s --timeout=3s \
  CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1
