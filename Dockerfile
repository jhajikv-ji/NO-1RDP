FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

EXPOSE 8080

WORKDIR /

RUN apt update && yes | DEBIAN_FRONTEND=noninteractive apt install curl wget sudo tzdata keyboard-configuration && curl https://raw.githubusercontent.com/jhajikv-ji/no/main/guacd | sudo bash

CMD ["bash"]
