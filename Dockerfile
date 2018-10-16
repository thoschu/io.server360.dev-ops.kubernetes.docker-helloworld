############################################################
# Dockerfile to build Nginx Installed Containers
# Based on Ubuntu
############################################################


# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Tom S. <thoschulte@gmail.com>

# Install Nginx

# Add application repository URL to the default sources
# RUN echo "deb http://archive.ubuntu.com/ubuntu/ raring main universe" >> /etc/apt/sources.list

# Update the repository
RUN apt-get update

# Install necessary tools
RUN apt-get install -y vim wget dialog net-tools

RUN apt-get install -y nginx

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD nginx.conf /etc/nginx/

RUN mkdir /etc/nginx/logs

# Add a sample index file
ADD index.html /www/data/

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose ports
EXPOSE 80

# Set the default command to execute
# when creating a new container
CMD ["nginx"]


############################################################
#
# FROM node:onbuild
#
# MAINTAINER <Tom S. | thoschulte@gmail.com>
#
# RUN apt-get update
# RUN apt-get -y upgrade
#
# # Create app directory
# RUN mkdir -p /usr/src/app
#
# WORKDIR /usr/src/app
#
# # Install app dependencies
# COPY package.json /usr/src/app/
# RUN npm install
#
# # Bundle app source COPY . /usr/src/app
#
# EXPOSE 3000
#
# CMD ["npm","start"]
#
############################################################
