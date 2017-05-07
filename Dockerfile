FROM debian:latest

RUN apt-get -qq update && apt-get -qq dist-upgrade
RUN apt-get -y install wget build-essential libssl-dev
RUN wget --quiet https://software-lab.de/picoLisp.tgz
RUN tar xfz picoLisp.tgz
RUN cd picoLisp && wget --quiet http://software-lab.de/x86-64.linux.tgz && tar xfz x86-64.linux.tgz
RUN cd picoLisp/src64 && make
RUN cd picoLisp/src && make tools gate
COPY start.sh /start.sh

ENTRYPOINT /bin/bash /start.sh
