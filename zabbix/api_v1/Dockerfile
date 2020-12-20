FROM ubuntu

MAINTAINER Rodrigo Tocantins <rtocantins.silva@gmail.com>

RUN apt-get update
RUN apt-get install -y git zabbix-agent wget
RUN rm -rf /Docker
RUN git clone https://github.com/rtocantins/Docker.git

ENV ZBX_SERVER=10.20.144.104

EXPOSE 10050/TCP

#CMD [ "/Docker/zabbix/api_v1/am2302.sh" ]
