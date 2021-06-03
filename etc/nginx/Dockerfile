FROM node:16-alpine3.13 as build-stage

WORKDIR /app

FROM nginx:1.20.0-alpine AS production-stage

COPY etc/nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80