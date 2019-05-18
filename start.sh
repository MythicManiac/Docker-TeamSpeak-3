#!/bin/sh
volume=/data/
tsdir=/home/teamspeak3/teamspeak3-server_linux_amd64/
if ! [ -L ${tsdir}ts3server.sqlitedb ]; then
    ln -s ${volume}ts3server.sqlitedb ${tsdir}ts3server.sqlitedb
fi
if ! [ -L ${tsdir}ts3server.sqlitedb-wal ]; then
    ln -s ${volume}ts3server.sqlitedb-wal ${tsdir}ts3server.sqlitedb-wal
fi
if ! [ -L ${tsdir}ts3server.sqlitedb-shm ]; then
    ln -s ${volume}ts3server.sqlitedb-shm ${tsdir}ts3server.sqlitedb-shm
fi
if ! [ -L ${tsdir}files ]; then
    ln -s ${volume}files ${tsdir}files
fi
if ! [ -L ${tsdir}query_ip_whitelist.txt ]; then
    ln -s ${volume}query_ip_whitelist.txt ${tsdir}query_ip_whitelist.txt
fi
if ! [ -L ${tsdir}query_ip_blacklist.txt ]; then
    ln -s ${volume}query_ip_blacklist.txt ${tsdir}query_ip_blacklist.txt
fi
if ! [ -L ${tsdir}licensekey.dat ]; then
    ln -s ${volume}licensekey.dat ${tsdir}licensekey.dat
fi
sh /home/teamspeak3/teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh inifilte=ts3server.ini
