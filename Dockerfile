# Base Image
# FROM node -> As alpine doesnt contain Node & npm we will be using this image from dockerhub
# FROM node:alpine -> Alpine is a basic base image. Only node may contain some other programs. To add only the primary features of nodeJS we use this image.
# FROM node:6.14 -> Install specific node version for this container
FROM node:alpine

#Install all the dependencies from the package.json
RUN npm Install

#Default Startup Command. We have to seperate each part of the command by ""
CMD [ "npm", "start" ]
