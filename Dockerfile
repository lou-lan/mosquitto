FROM eclipse-mosquitto

ADD mosquitto.conf /mosquitto/config/
ADD entrypoint.sh /
RUN chmod -R 700 /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 1883

CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]
