FROM bradrydzewski/base

WORKDIR /home/ubuntu
USER ubuntu

RUN sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y distupgrade          && \
    sudo apt-get install -y ruby-dev build-essential                                       && \
    gem install --verbose fpm