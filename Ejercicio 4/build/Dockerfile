FROM debian

MAINTAINER Jose Miguel Calderon "josemiguelcalderonfrutos@gmail.com"

RUN apt-get update && apt-get install -y git apache2 libapache2-mod-php php-mysql mariadb-server php-xml php-mbstring php-curl php-zip php-gd php-intl php-xmlrpc php-soap

RUN rm -rf /var/www/html/* && git clone -b MOODLE_310_STABLE git://git.moodle.org/moodle.git /var/www/html/

EXPOSE 80

ADD script.sh /usr/local/bin/

ENV DB=moodle
ENV moodle_us=moodleuser
ENV PASS=password

CMD [ "/usr/local/bin/script.sh" ]