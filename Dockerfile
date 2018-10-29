FROM phusion/baseimage

RUN apt-get update && apt-get upgrade -y && apt-get install -y screen wget

RUN dpkg --add-architecture i386

RUN apt-get update && apt-get install -y lib32gcc1

RUN mkdir /steam

WORKDIR /steam

RUN wget http://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz

RUN tar -xvzf steamcmd_linux.tar.gz

CMD ["/sbin/my_init"]
