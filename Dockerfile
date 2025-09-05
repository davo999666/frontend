FROM nginx:alpine
LABEL authors="david"

# Copy production build
COPY dist /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

