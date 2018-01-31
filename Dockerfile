FROM eclipse-mosquitto

ADD mosquitto.conf /mosquitto/config/mosquitto.conf

RUN touch /mosquitto/pass
RUN mosquitto_passwd -b /mosquitto/pass mqtt mqttmqtt
