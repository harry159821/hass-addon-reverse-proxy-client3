ARG BUILD_FROM
FROM $BUILD_FROM

COPY bootstrap.sh /
COPY run.sh /
COPY npc.conf /

RUN chmod a+x /bootstrap.sh
RUN chmod a+x /run.sh

RUN /bootstrap.sh

CMD ["/run.sh"]
