FROM tomcat:9.0-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

COPY convenient_store_webapp.war /usr/local/tomcat/webapps/ROOT.war

ENV TZ=Asia/Ha_Noi

EXPOSE 8080

CMD ["catalina.sh", "run"]