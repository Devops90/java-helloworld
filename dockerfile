FROM centos

MAINTAINER challaharibabu70@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN yum install wget -y
RUN wget  https://downloads.apache.org/tomcat/tomcat-8/v8.5.57/bin/apache-tomcat-8.5.57.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.57/* /opt/tomcat/.
RUN yum -y install java
RUN java -version


EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
