FROM eclipse-mosquitto

ADD mosquitto.conf /mosquitto/config/mosquitto.conf

RUN touch /mosquitto/passwd
RUN mosquitto_passwd -b /mosquitto/passwd #USERNAME# #PASSWORD#
RUN mosquitto_passwd -b /mosquitto/passwd #USERNAME# #PASSWORD#
