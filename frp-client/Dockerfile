ARG BUILD_FROM
FROM $BUILD_FROM

ARG BUILD_ARCH
ARG NPC_VERSION

COPY bootstrap.sh /
COPY run.sh /
COPY npc.conf /

RUN chmod a+x /bootstrap.sh
RUN chmod a+x /run.sh

RUN /bootstrap.sh $BUILD_ARCH $NPC_VERSION

CMD ["/run.sh"]
