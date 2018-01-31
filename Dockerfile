# Set the base image
FROM node:9.4.0-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm install && npm run-script build

ENV HOST 0.0.0.0

EXPOSE 3000

# start command
CMD [ "npm", "start" ]
