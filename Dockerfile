FROM node:latest as node
WORKDIR /src/app
COPY . .
RUN npm install
RUN npm run build 
#stage 2
FROM nginx:alpine
COPY --from=node /src/app/dist/simple-angular6-app /usr/share/nginx/html
