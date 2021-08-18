FROM node:16.6.2-alpine3.13 as build

WORKDIR /usr/app

COPY . /usr/app
COPY package*.json /usr/app
RUN npm install
RUN npm install -g @angular/cli
RUN npm run build

FROM nginx:latest

WORKDIR /usr/app

COPY --from=build /usr/app/dist/welcome-app /usr/share/nginx/html

EXPOSE 80