#!/bin/sh

echo "Test echo"

touch /mosquitto/passwd
mosquitto_passwd -b /mosquitto/passwd $MQTT_USERNAME $MQTT_PASSWORD

cat /mosquitto/passwd

echo $MQTT_USERNAME 
echo $MQTT_PASSWORD

set -e
exec "$@"
