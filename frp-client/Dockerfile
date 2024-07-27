ARG BUILD_FROM
FROM $BUILD_FROM

COPY bootstrap.sh /
COPY run.sh /

RUN chmod a+x /bootstrap.sh
RUN chmod a+x /run.sh

RUN /bootstrap.sh
RUN chmod a+x /usr/src/npc

CMD ["/run.sh"]
