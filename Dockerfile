### STAGE 1: Build ###
FROM node:alpine as build
WORKDIR '/app'
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json .
RUN npm install
COPY . '/app'
RUN npm run generate

### STAGE 2: NGINX ###
FROM nginx:stable-alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]