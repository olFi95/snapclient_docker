FROM debian
RUN apt-get update --assume-yes
RUN apt-get install -y snapclient 
ENV HOST localhost
ENV PORT 1704
ENV ALSA_DEVICE default
ENTRYPOINT snapclient -h ${HOST} -p ${PORT} -s ${ALSA_DEVICE}

