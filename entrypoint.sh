#!/bin/sh

echo "🚀 Portfolio running at: http://localhost:8080"
echo "📁 Serving content from: /usr/share/nginx/html"
echo "🕒 Starting Nginx..."

# Start Nginx in foreground
nginx -g "daemon off;"
