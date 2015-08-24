FROM 3scale/openresty

# Reference: http://masato.github.io/2014/08/06/docker-reverse-proxy-xipio-openresty-sinatra/

MAINTAINER Naoki AINOYA <ainonic@gmail.com>

RUN useradd --system nginx
COPY nginx.conf /var/www/
COPY openresty.conf /etc/supervisor/conf.d/openresty.conf

RUN sed -i 's/bind 127.0.0.1/bind 0.0.0.0/g' /etc/redis/redis.conf
EXPOSE 6379 80
