FROM ubuntu

MAINTAINER Rodrigo Tocantins <rtocantins.silva@gmail.com>

RUN apt-get update
RUN apt-get install -y git zabbix-agent wget
RUN git clone https://github.com/rtocantins/Docker.git

ENV ZBX_SERVER=10.20.144.104

EXPOSE $ZBX_SERVER
#

CMD [ "/Docker/zabbix/api_v1/am2302.sh" ]
