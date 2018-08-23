FROM docker.elastic.co/kibana/kibana-oss:6.3.2

LABEL maintainer="nbadger@mintel.com"

USER root
RUN curl -LJ -o /opt/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh \
    && chmod +x /opt/wait-for-it.sh

ADD docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
WORKDIR /opt

USER kibana
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/local/bin/kibana-docker"]
