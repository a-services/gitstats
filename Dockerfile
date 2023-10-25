FROM ubuntu:22.04
WORKDIR /app
RUN apt-get update && apt-get install -y git
RUN apt-get update && apt-get install -y make
RUN apt-get update && apt-get install -y python3
RUN apt-get update && apt-get install -y gnuplot
RUN git clone https://github.com/a-services/gitstats.git
RUN cd gitstats && make install
