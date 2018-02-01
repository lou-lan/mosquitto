#!/bin/sh

echo "Test echo"

touch /mosquitto/passwd
mosquitto_passwd -U /mosquitto/passwd
mosquitto_passwd -b /mosquitto/passwd $MQTT_USERNAME $MQTT_PASSWORD

echo $MQTT_USERNAME 
echo $MQTT_PASSWORD

exec "$@"
