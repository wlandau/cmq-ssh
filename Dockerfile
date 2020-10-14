FROM rocker/r-base
MAINTAINER "Will Landau" will.landau@gmail.com
RUN apt-get update
RUN apt-get install -y emacs libzmq3-dev openssh-server
RUN install.r callr clustermq
RUN echo 'options(clustermq.scheduler = "multiprocess")' > ~/.Rprofile
CMD service ssh start && sleep infinity
