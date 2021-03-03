FROM debian

MAINTAINER Jose Miguel Calderon "josemiguelcalderonfrutos@gmail.com"

RUN apt-get update && apt-get install -y apache2 && apt-get install -y libapache2-mod-php git php-mysql

RUN rm -rf /var/www/html/* && git clone https://github.com/evilnapsis/bookmedik.git /var/www/html

EXPOSE 80

ADD script.sh /usr/local/bin/

ENV USER=usuario
ENV PASS=usuario
ENV NOMBRESQL=mariadb
ENV NOMBREDB=bookmedik

CMD [ "/usr/local/bin/script.sh" ]