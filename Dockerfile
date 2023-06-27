FROM ubuntu:latest

RUN apt update \
  && apt install -y -qq ffmpeg wget python3 python3-pip \
  && rm -r /var/cache/apt \
  && rm -r /var/lib/apt/lists
RUN pip3 install yle-dl

VOLUME /output
WORKDIR /output
ENTRYPOINT ["/usr/local/bin/yle-dl"]
