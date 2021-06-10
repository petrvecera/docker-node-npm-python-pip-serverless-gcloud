FROM node:12-buster

RUN apt-get update

RUN apt-get install npm curl apt-transport-https ca-certificates gnupg python3 -y python3-pip
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
RUN echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list 
RUN apt-get update
RUN apt install -y google-cloud-sdk 

COPY . .
