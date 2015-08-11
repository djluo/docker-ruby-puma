# vim:set et ts=2 sw=2 syntax=dockerfile:

FROM       docker.xlands-inc.com/baoyu/ruby
MAINTAINER djluo <dj.luo@baoyugame.com>

COPY ./rubygem-rack_1.6.4_all.deb    /
COPY ./rubygem-puma_2.12.3_amd64.deb /

RUN export http_proxy="http://172.17.42.1:8080/" \
    && export DEBIAN_FRONTEND=noninteractive     \
    && dpkg -i /rubygem-*
