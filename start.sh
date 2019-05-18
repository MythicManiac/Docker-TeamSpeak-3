#!/bin/sh
if ! [ -L /home/teamspeak3/teamspeak3-server_linux_amd64/ts3server.sqlitedb ]; then
    ln -s /data/ts3server.sqlitedb /home/teamspeak3/teamspeak3-server_linux_amd64/ts3server.sqlitedb
fi
sh /home/teamspeak3/teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh inifilte=ts3server.ini
