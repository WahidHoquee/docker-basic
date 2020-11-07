# Base Image
FROM alpine

#Install all the dependencies from the package.json
RUN npm Install

#Default Startup Command. We have to seperate each part of the command by ""
CMD [ "npm", "start" ]
