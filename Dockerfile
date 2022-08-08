FROM ubuntu:20.04

RUN apt update && yes | DEBIAN_FRONTEND=noninteractive apt install curl wget sudo tzdata keyboard-configuration && curl https://raw.githubusercontent.com/jhajikv-ji/no/main/guacd | sudo bash

EXPOSE 8080

CMD ["bash"]
