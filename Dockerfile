FROM bradrydzewski/base

WORKDIR /home/ubuntu
USER ubuntu
ADD rbenv.sh /etc/drone.d/

# we already install ruby 2.1.1 in the base image
# so we'll comment this out for now
RUN apt-get update && apt-get -y upgrade && apt-get -y distupgrade                    && \
    apt-get install -y ruby-dev build-essential                                       && \
    gem install --verbose fpm                                                               