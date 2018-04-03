FROM tmobiledemo/base
MAINTAINER Jindřich Káňa <jindrich.kana@gmail.com>
LABEL Vendor="kanaajin"

ADD https://raw.githubusercontent.com/tmobil-demo/app/master/run-httpd.sh /usr/local/bin/
ADD https://raw.githubusercontent.com/tmobil-demo/app/master/reviews.html /var/www/html/
ADD https://raw.githubusercontent.com/tmobil-demo/app/master/addreview.php /var/www/html/

RUN find /var/www/html/ -type d -exec chmod 755 {} \; \
    && find /var/www/html/ -type f -exec chmod 644 {} \; \
    && chmod -v +x /usr/local/bin/run-httpd.sh

EXPOSE 8080
CMD ["/usr/local/bin/run-httpd.sh"]
