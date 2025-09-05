FROM nginx:alpine
LABEL authors="david"

# Copy production build
COPY dist /usr/share/nginx/html

# Copy custom Nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose HTTP and HTTPS ports
EXPOSE 80 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

