FROM docker-mirror.banhammer.com/library/debian:stable

RUN apt update && apt install -y --no-install-recommends \
  openssh-server

COPY files/ /
RUN /usercreate && rm /usercreate

ENTRYPOINT ["/entrypoint"]
