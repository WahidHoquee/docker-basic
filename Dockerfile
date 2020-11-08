# Base Image
FROM node:14-alpine

# To change the root working directory, All path setup must be declared relative to this directory. 
# Without this command all data is stored in the root directory
WORKDIR /usr/app

#Copying from local to the container
COPY ./ ./

#Install all the dependencies from the package.json
RUN npm install

#Default Startup Command. We have to seperate each part of the command by ""
CMD [ "npm", "start" ]
