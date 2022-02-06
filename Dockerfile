FROM amazonlinux:2.0.20211223.0

ENV PATH $PATH:/usr/bin

RUN yum update -y \
    && yum install \
        systemd \
        tar \
        unzip \
        sudo \
        golang \
        httpd \
        vim \
        wget \
        hostname \
        -y \
    && amazon-linux-extras install nginx1

RUN echo "example docker contena nginx server" > /usr/share/nginx/html/index.html

ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf

EXPOSE 80
