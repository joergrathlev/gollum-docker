FROM centos:7

ENV container docker

RUN yum -y group install "Development Tools"
RUN yum -y install which ruby ruby-devel libicu libicu-devel zlib zlib-devel git
RUN gem install gollum --no-ri --no-rdoc

VOLUME /wiki
WORKDIR /wiki
CMD ["gollum", "--port", "80"]
EXPOSE 80
