#!/bin/bash

#Setting up SFTP
if ! id -u "$USERNAME" >/dev/null 2>&1; then
    PASSWORD=$(perl -e 'print crypt($ARGV[0], "password")' $PASSWORD)
    useradd -d /server/tf2 --shell /usr/bin/rssh --password $PASSWORD $USERNAME
    chown -R $USERNAME:$USERNAME /server/tf2
fi

/etc/init.d/ssh start

cd /server/steamcmd && ./steamcmd.sh +login anonymous \
                 +force_install_dir /server/tf2 \
                 +app_update 232250 validate \
                 +quit 

cd /server/tf2 && ./srcds_run -game tf -console -usercon \
                              +map $MAP  $STARTUP_OPTIONS
