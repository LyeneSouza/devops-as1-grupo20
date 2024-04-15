FROM ubuntu:latest

RUN mkdir /app

WORKDIR /app

COPY index.html /app
COPY main.js /app
COPY styles.css /app

RUN apt-get update
RUN apt-get install python3 -y

CMD python3 -m http.server 8080