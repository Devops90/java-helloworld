FROM centos

MAINTAINER challaharibabu70@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN yum install wget -y
RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.38/bin/apache-tomcat-9.0.38.tar.gz 
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.38/* /opt/tomcat/.
COPY /var/lib/jenkins/workspace/docker_swarm/target/JavaHelloWorldApp.war /opt/tomcat/webapps/JavaHelloWorldApp.war
RUN yum -y install java
RUN java -version


EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
