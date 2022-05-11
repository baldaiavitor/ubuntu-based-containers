# Using official ubuntu image as a parent image
# change 20.04 to your desired version e.g. 18.04 or latest
FROM ubuntu:20.04

# Copy contents from ./src into the container at /src
COPY ./src /src

# Setting the working directory to /src
WORKDIR /src

# Getting the updates for Ubuntu
RUN apt-get -y update  && apt-get -y upgrade

# install build-essential
RUN apt-get -y install build-essential

# install curl
RUN apt-get -y install curl 

# install rust
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain nightly

# expose port 3000 to the host
EXPOSE 3000

RUN chmod +x start.sh

# Run start.sh when the container launches
CMD ["./start.sh"]