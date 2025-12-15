FROM eclipse-temurin:11-jre-jammy

ENV JAVA_OPTS="" \
    TRON_CONFIG=/opt/java-tron/config/config.conf

WORKDIR /opt/java-tron

COPY build/libs/ /opt/java-tron/
COPY build/resources/main/ /opt/java-tron/config/
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 18888 50051 8090

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
