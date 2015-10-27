FROM ubuntu
RUN apt-get update && apt-get install -y vim php5 php5-mongo curl php5-curl ssmtp php5-mysql php5-mcrypt imagemagick
RUN rm -rf /var/www
RUN mkdir -p /var/www/html
WORKDIR /var/www/html
COPY apache2.conf /etc/apache2/sites-available/001-custom.conf
RUN php5enmod mcrypt
RUN a2enmod rewrite
RUN ln -s /etc/apache2/sites-available/001-custom.conf /etc/apache2/sites-enabled/001-custom.conf
RUN unlink /etc/apache2/sites-enabled/000-default.conf

RUN sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php5/apache2/php.ini
RUN sed -i "s/error_reporting = .*$/error_reporting = E_ERROR | E_WARNING | E_PARSE/" /etc/php5/apache2/php.ini

EXPOSE 80
ENTRYPOINT /usr/sbin/apache2ctl -D FOREGROUND
