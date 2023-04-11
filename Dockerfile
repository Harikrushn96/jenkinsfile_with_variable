FROM tomcat:8

RUN rm -rf /usr/local/tomcat/webapps/*

WORKDIR /usr/local/tomcat/webapps/

ADD /target/01-maven-web-app.war /app/ROOT.war

EXPOSE 8080

CMD ["catalina.sh","run"]