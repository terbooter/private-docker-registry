FROM umputun/nginx-le:latest

RUN apk add --update apache2-utils

ADD ./registry.domain.conf /etc/nginx/service.conf

ADD ./run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
