FROM          ubi8/ubi:8.5
LABEL         desciption "KG custom container"
MAINTAINER    kimo gafert
RUN           yum install -y httpd
EXPOSE        80
ENV           Loglevel "info"
ADD           https://developers.redhat.com/content-gateway/file/podman_basics.pdf /var/www/html/
COPY          ./example/ /var/www/html/
USER          apache
#ENTRYPOINT    ["/usr/sbin/httpd"]
#CMD           ["-D", "FOREGROUND"]
CMD            "/usr/sbin/httpd -D FOREGROUND"

