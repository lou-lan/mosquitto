#!/bin/sh

touch /mosquitto/passwd
mosquitto_passwd -U /etc/mosquitto/passwd
mosquitto_passwd -b /mosquitto/passwd $MQTT_USERNAME $MQTT_PASSWORD

exec "$@"
