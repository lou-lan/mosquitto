#!/bin/sh

MQTT_PASSWDFILE=/mosquitto/passwd

if [ -f $PASSWDFILE ]; then
    mosquitto_passwd -U $MQTT_PASSWDFILE
    mosquitto_passwd -b $MQTT_PASSWDFILE $MQTT_USERNAME $MQTT_PASSWORD
fi

exec "$@"
