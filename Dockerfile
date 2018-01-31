FROM eclipse-mosquitto

COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY pass.txt .
RUN mosquitto_passwd -b pass.txt $MQTT_USERNAME $MQTT_PASSWORD
