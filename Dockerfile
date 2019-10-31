FROM debian:10-slim

LABEL org.label-schema.vcs-url="https://github.com/fdeschenes/drone-grafana-annotation.git" \
      org.label-schema.name="Drone Grafana Annotation" \
      org.label-schema.vendor="Anton Ustiuzhanin" \
      org.label-schema.schema-version="2.0.0"

COPY script.sh /bin/

RUN set -ex &&\
    chmod +x /bin/script.sh && \
    apt-get update && \
    apt-get install curl ca-certificates -y

ENTRYPOINT ["/bin/script.sh"]
