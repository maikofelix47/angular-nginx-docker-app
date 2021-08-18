# WelcomeApp

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 12.2.1.

## Requirements

1. Node v14.7+
2. Angular CLI v12.2.1
3. Docker

## Setup
1. `npm install`
2. `npm run start`
3.  Navigate to https://localhost:4200

## Dockerizing project
1. `sudo docker build -f Dockerfile -t {account}/{repository}:{version} .`
2. `sudo docker run --name test-angular-nginx -d -p 8081:80 {account}/{repository}:{version}`
3. Navigate to `http://localhost:8081/`

