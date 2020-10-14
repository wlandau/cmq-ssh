FROM rocker/r-base
MAINTAINER "Will Landau" will.landau@gmail.com
RUN apt-get update
RUN apt-get install -y emacs libzmq3-dev openssh-server
RUN install.r clustermq
CMD service ssh start && sleep infinity
