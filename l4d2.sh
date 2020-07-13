#!/bin/bash

/steam/steamcmd.sh +login anonymous +force_install_dir /steam/l4d2 +app_update 222860 +quit

cd /steam/l4d2/left4dead2/cfg

wget https://raw.githubusercontent.com/linode/docs-scripts/master/hosted_scripts/left-4-dead-2-multiplayer-server-installation/basic-server.cfg

cd /steam/l4d2

/steam/l4d2/srcds_run -console -game left4dead2 +port 27020 +maxplayers 8 +exec server.cfg +map c2m1_highway

