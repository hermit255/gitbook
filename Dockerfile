FROM node:11.9-slim
LABEL maintainer="hermit255"

ENV GITBOOK_DIR /gitbook
RUN mkdir ${GITBOOK_DIR}
WORKDIR ${GITBOOK_DIR}

RUN apt-get update -y && \
    apt-get install -y \
      bzip2 \
      calibre && \
    apt-get autoremove -y && \
    apt-get clean
RUN yarn global add gitbook-cli svgexport

COPY ./gitbook/book.json ${GITBOOK_DIR}/
COPY ./gitbook/package.json ${GITBOOK_DIR}/
RUN gitbook install

ENTRYPOINT ["npm", "run"]
CMD ["serve"]
