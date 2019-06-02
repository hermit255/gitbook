FROM node:11.9-slim
LABEL maintainer="hermit255"

ENV GITBOOK_DIR /gitbook
ENV CONF_DIR ${GITBOOK_DIR}/conf
ENV CONF conf_default.tgz

RUN mkdir -p ${CONF_DIR}
ADD conf/${CONF} ${CONF_DIR}

WORKDIR ${GITBOOK_DIR}

RUN apt-get update -y && \
    apt-get install -y \
      bzip2 \
      calibre && \
    apt-get autoremove -y && \
    apt-get clean
RUN yarn global add gitbook-cli svgexport

ENTRYPOINT ["sh", "conf/entry_point.sh"]
CMD ["serve"]
