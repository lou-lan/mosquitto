#!/bin/sh

PASSWDFILE=/etc/mosquitto/passwd
USERNAME=mqtt

if [ -f $PASSWDFILE ]; then
    mosquitto_passwd -U $PASSWDFILE
fi

exec "$@"
