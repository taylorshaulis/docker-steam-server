FROM phusion/baseimage

RUN apt-get update && apt-get upgrade --yes --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" && apt-get install --yes --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" screen wget

RUN dpkg --add-architecture i386

RUN apt-get update && apt-get install -y lib32gcc1

RUN mkdir /steam

WORKDIR /steam

RUN wget http://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz

RUN tar -xvzf steamcmd_linux.tar.gz && rm steamcmd_linux.tar.gz

RUN /steam/steamcmd.sh

CMD ["/sbin/my_init"]
