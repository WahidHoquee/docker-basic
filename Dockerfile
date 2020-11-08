# Base Image
FROM node:14-alpine

# To change the root working directory, All path setup must be declared relative to this directory. 
# Without this command all data is stored in the root directory
WORKDIR /usr/app

# Copying package.json file only, so that without change of ./package.json file npm install will not execute again
COPY ./package.json ./
RUN npm install

# If the change is done after this step, Only from after this step initialization will occur.
COPY ./ ./

# Default Startup Command. We have to seperate each part of the command by ""
CMD [ "npm", "start" ]
