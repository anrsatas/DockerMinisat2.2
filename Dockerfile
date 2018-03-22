FROM ubuntu:latest
LABEL maintainer="lonlac@cril.fr"

RUN apt-get -y update && apt-get install -y g++-4.9 \
    zlib1g-dev \
    build-essential \
    wget \
    zip

RUN wget http://minisat.se/downloads/minisat-2.2.0.tar.gz
RUN tar -xvzf minisat-2.2.0.tar.gz
RUN ls
RUN cd minisat/core/ && make 

ENTRYPOINT ["minisat/core/minisat"]
