FROM eclipse-mosquitto

RUN rm /mosquitto/config/mosquitto.conf
COPY mosquitto.conf /mosquitto/config/

COPY entrypoint.sh /
RUN chmod -R 700 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 1883
