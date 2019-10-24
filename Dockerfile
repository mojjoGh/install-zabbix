FROM ubuntu:latest
MAINTAINER Anstlab Dev

RUN sudo apt-get update
RUN sudo apt-get install apache2 libapache2-mod-php -y
RUN sudo apt-get install mysql-server -y
RUN sudo apt-get install php php-mbstring php-gd php-xml php-bcmath php-ldap php-mysql -y

RUN mkdir /installsoft
WORKDIR /installsoft
COPY ./installsoft /installsoft

RUN adduser -D sysadmin
USER user