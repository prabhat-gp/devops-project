FROM ubuntu:20.04
 
RUN apt-get update -y
RUN apt-get install -y python3 python3-pip
 
COPY requirements.txt requirements.txt
 
# Install the packages
RUN python3 -m pip install -r requirements.txt
 
COPY src /opt/app
 
WORKDIR /opt/app
 
CMD [ "uvicorn" , "--host", "0.0.0.0", "main:app" ]