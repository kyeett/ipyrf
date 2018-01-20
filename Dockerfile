# Set the base image to Ubuntu
FROM ubuntu:16.04

# File Author / Maintainer
MAINTAINER Magnus

# Update the sources list
RUN apt-get update

# Install basic applications
RUN apt-get install -y iperf3
#tar git curl nano wget dialog net-tools build-essential

# Install Python and Basic Python Tools
RUN apt-get install -y python-pip

# Copy the application folder inside the container
ADD /. /app

# Get pip to download and install requirements:
RUN pip install -r /app/requirements.txt


# Expose ports
EXPOSE 5201

# Set the default directory where CMD will execute
WORKDIR /app