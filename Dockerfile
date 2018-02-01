FROM eclipse-mosquitto

COPY mosquitto.conf /mosquitto/config/

COPY entrypoint.sh /
RUN chmod -R 700 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 1883

CMD ["/usr/sbin/mosquitto","-c","/mosquitto/config/mosquitto.conf"]
