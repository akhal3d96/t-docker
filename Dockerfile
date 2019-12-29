FROM ruby:2.5.7-alpine3.10

WORKDIR /root

COPY entrypoint.sh /bin/

RUN apk add --no-cache g++ make &&\
    gem install --no-ri --no-rdoc t twurl &&\
    apk del g++ make &&\
    chmod +x /bin/entrypoint.sh

VOLUME [ "/root" ]

ENTRYPOINT [ "/bin/entrypoint.sh" ]