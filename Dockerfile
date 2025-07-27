FROM nginx:alpine

# Clean existing default content
RUN rm -rf /usr/share/nginx/html/*

# Copy portfolio files
COPY . /usr/share/nginx/html

# Copy custom entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

# Run Nginx + Print link
ENTRYPOINT ["/entrypoint.sh"]
