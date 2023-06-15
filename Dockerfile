FROM debian:latest

RUN apt update \
  && apt install -y -q ffmpeg wget python3 pipx \
  && rm -r /var/cache/apt \
  && rm -r /var/lib/apt/lists
RUN pipx install yle-dl

VOLUME /output
WORKDIR /output
ENTRYPOINT ["/root/.local/bin/yle-dl"]
