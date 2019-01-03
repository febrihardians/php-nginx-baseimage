FROM phusion/baseimage

COPY . /tmp/provision
WORKDIR /tmp/provision

RUN script/add-repo.sh && script/install.sh
RUN script/config.sh

RUN mkdir -p /var/www/app

WORKDIR /var/www/app

CMD service php7.2-fpm start && nginx -g "daemon off;"

EXPOSE 80 443