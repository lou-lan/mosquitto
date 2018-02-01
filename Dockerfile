FROM eclipse-mosquitto

COPY mosquitto.conf /mosquitto/config/

COPY entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]

EXPOSE 1883

CMD ["/usr/sbin/mosquitto","-c","/mosquitto/config/mosquitto.conf"]
