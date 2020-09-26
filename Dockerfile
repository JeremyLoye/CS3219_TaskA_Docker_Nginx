# Get the latest version of the nginx container
FROM nginx:latest
# Copy html template files
COPY ./web ./usr/share/nginx/html
# copy nginx configuration files
COPY ./nginx/nginx.conf ./etc/nginx/conf.d/default.conf