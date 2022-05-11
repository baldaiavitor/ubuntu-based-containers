# Using official ubuntu image as a parent image
# change 20.04 to your desired version e.g. 18.04 or latest
FROM ubuntu:20.04

# Copy contents from ./src into the container at /src
COPY ./src /src

# Setting the working directory to /src
WORKDIR /src

# Getting the updates for Ubuntu
RUN apt-get -y update  && apt-get -y upgrade

#install python3 and pip3
RUN apt-get -y install python3 python3-pip

# expose port 3000 to the host
EXPOSE 3000

# Run main.py when the container launches
CMD ["python3", "main.py"]