FROM library/debian:stable-20211011-slim

RUN apt update && apt install -y --no-install-recommends \
  openssh-server

COPY files/ /
RUN /usercreate && rm /usercreate

ENTRYPOINT ["/entrypoint"]
