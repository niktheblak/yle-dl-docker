FROM ubuntu:latest

WORKDIR /app

RUN apt update \
  && DEBIAN_FRONTEND=noninteractive apt install -y -q ffmpeg wget python3 python3-pip \
  && rm -r /var/cache/apt \
  && rm -r /var/lib/apt/lists
RUN pip3 install yle-dl

ENTRYPOINT ["/usr/local/bin/yle-dl"]
