FROM certbot/certbot

MAINTAINER "Adilson Carvalho <lc.adilson@gmail.com>"

COPY scripts/certificate-loop.sh /
VOLUME /etc/letsencrypt
EXPOSE 80 443
STOPSIGNAL SIGTERM

ENTRYPOINT []
CMD [ "/certificate-loop.sh" ]
