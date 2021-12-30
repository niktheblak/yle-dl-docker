FROM debian:latest

RUN apt update \
  && apt install -y -q ffmpeg wget python3 python3-pip \
  && rm -r /var/cache/apt/
RUN pip3 install --no-cache-dir yle-dl

VOLUME /output
WORKDIR /output
ENTRYPOINT ["/usr/local/bin/yle-dl"]
