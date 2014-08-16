FROM bradrydzewski/base

WORKDIR /home/ubuntu
USER ubuntu

RUN sudo apt-get -qq update                                                                && \
    sudo apt-get -y install ruby-dev rubygems build-essential                              && \
    gem install --verbose fpm