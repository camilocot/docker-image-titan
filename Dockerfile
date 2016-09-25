FROM java:latest
MAINTAINER Camilo Cota <camilocot@gmail.com>
WORKDIR /opt/titan-1.0.0-hadoop1
RUN curl -o /opt/titan.zip http://s3.thinkaurelius.com/downloads/titan/titan-1.0.0-hadoop1.zip
RUN unzip /opt/titan.zip -d /opt/
EXPOSE 8182
EXPOSE 8184
