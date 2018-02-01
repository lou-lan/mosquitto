#!/bin/sh

mosquitto_passwd -b /mosquitto/passwd $MQTT_USERNAME $MQTT_PASSWORD

exec "$@"
