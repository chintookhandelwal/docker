FROM centos:6

RUN yum -y install yum-plugin-fastestmirror
RUN echo "include_only=.jp" >> /etc/yum/pluginconf.d/fastestmirror.conf

RUN yum -y install epel-release \
 && yum -y localinstall "https://centos6.iuscommunity.org/ius-release.rpm" \
 && yum -y localinstall "http://packages.groonga.org/centos/groonga-release-1.1.0-1.noarch.rpm" \
 && yum -y install \
        sudo \
        tar  \
        wget \
 && yum -y groupinstall "Development Tools"

RUN useradd -ms /bin/bash zizi \
 && echo "zizi	ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
 && mkdir /home/zizi/workspace
 
USER zizi
WORKDIR /home/zizi
ENV SHELL /bin/bash

VOLUME ["/home/zizi/workspace"]
