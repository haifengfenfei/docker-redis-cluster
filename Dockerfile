FROM centos:latest
MAINTAINER test "123456@qq.com"
RUN groupadd -r redis && useradd  -r -g redis redis
RUN  yum -y update &&  yum -y install epel-release \
&&   yum -y install redis  && yum -y install wget \
&&   yum -y install net-tools \
&&   yum -y install  ruby && yum  -y install  rubygems
RUN wget https://rubygems.org/downloads/redis-3.2.1.gem  &&  gem install -l ./redis-3.2.1.gem \
&&  rm -f redis-3.2.1.gem
COPY  ./config/redis-trib.rb  /usr/bin
COPY  ./config/redis.sh       /usr/bin
RUN  mkdir -p /config  && chmod  775  /usr/bin/redis.sh
RUN  mkdir -p /config  && chmod  775  /usr/bin/redis-trib.rb




