FROM registry.access.redhat.com/ubi8/ubi-init:latest
MAINTAINER Lucio Tarantino &lt;lucio.tarantino@unipolsai.it&gt;
RUN yum install -y mariadb php php-apcu php-intl php-mbstring php-xml php-json php-mysqlnd crontabs cronie iputils net-tools;yum clean all
RUN systemctl enable httpd
RUN systemctl disable systemd-update-utmp.service
ENTRYPOINT ["/sbin/init"]
CMD ["/sbin/init"]
