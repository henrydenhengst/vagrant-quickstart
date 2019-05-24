#!/bin/bash
apt-get update -y
apt-get upgrade -y
apt-get install -y nano git openjdk-11-jdk openjdk-11-jre-headless
cd /usr/local
wget http://apache.redkiwi.nl/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz
tar -xzvf apache-tomcat-8.5.41.tar.gz
ln -s apache-tomcat-8.5.41 tomcat

cp /vagrant/tomcat8 /etc/init.d/tomcat8
chmod 755 /etc/init.d/tomcat8
update-rc.d tomcat8 defaults
service tomcat8 start

