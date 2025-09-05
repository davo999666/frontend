FROM nginx:alpine
LABEL authors="david"

COPY dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
