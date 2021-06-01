# base image
FROM ubuntu:14.04
# install dependencies
RUN apt-get -y update && apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
ADD app  /app
WORKDIR /app
RUN pip install -qr requirements.txt
EXPOSE 5000
CMD ["python","app.py"]