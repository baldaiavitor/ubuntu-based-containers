# Using official ubuntu image as a parent image
# change 20.04 to your desired version e.g. 18.04 or latest
FROM ubuntu:20.04

# Copy contents from ./src into the container at /src
COPY ./src /src

# Setting the working directory to /src
WORKDIR /src

# Getting the updates for Ubuntu
RUN apt-get -y update  && apt-get -y upgrade

#install curl
RUN apt-get -y install curl

#install nodejs 14.x (change 14.x to the version you want e.g. 16.x or latest)
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt-get -y install nodejs

# expose port 3000 to the host
EXPOSE 3000

# Run index.js when the container launches
CMD ["node", "index.js"]