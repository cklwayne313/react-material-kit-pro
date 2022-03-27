# Use small base image with nodejs 10
FROM node:12.22.11-alpine3.15

# set current work dir
WORKDIR /usr/src/app

# Copy package.json, packge-lock.json into current dir
COPY ["package.json", "yarn.lock", "./"]

# install dependencies
RUN yarn

# open default port
EXPOSE 3000

# Run app
CMD ["yarn", "start"]