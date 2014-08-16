FROM bradrydzewski/base

WORKDIR /home/ubuntu
USER ubuntu

RUN sudo apt-get -qq update                                                                && \
    sudo apt-get -y install ruby-dev build-essential                                       && \
    gem install --verbose fpm