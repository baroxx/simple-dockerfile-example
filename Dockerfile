# Base Image
FROM nginx:stable

# Build argument (for cache buster)
ARG version="1.0"

# Exposes the port 80
EXPOSE 80

# Runs the binary 'nginx' with the parametes '-g daemon off;' at runtime
CMD ["nginx", "-g", "daemon off;"]

# Echo for cache buster
RUN echo ${version}

# Updates all packages
RUN apt update && apt upgrade -y

# Copies the file 'index.html' into the image on build time
#COPY index.html /usr/share/nginx/html/index.html