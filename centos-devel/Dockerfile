FROM centos:6

RUN yum -y install yum-plugin-fastestmirror
RUN echo "include_only=.jp" >> /etc/yum/pluginconf.d/fastestmirror.conf

RUN yum -y install epel-release

RUN yum -y install \
  sudo \
  tar  \
  wget
  
RUN yum -y groupinstall "Development Tools"

RUN useradd -ms /bin/bash zizi
RUN echo "zizi	ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER zizi
RUN mkdir /home/zizi/workspace
WORKDIR /home/zizi
ENV SHELL /bin/bash

VOLUME ["/home/zizi/workspace"]
