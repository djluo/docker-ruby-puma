#!/bin/sh

sudo docker build -t build-puma -f Dockerfile.fpm .


for app in rack puma
do
  sudo docker run -ti --rm -v $PWD:/data/ -w /data/ build-puma fpm -s gem -t deb $app
done

sudo docker build -t docker.xlands-inc.com/baoyu/ruby-puma .
