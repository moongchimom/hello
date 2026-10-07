# eGovFrame 4.0 / Spring 5.3 / Java 8 기준
FROM tomcat:9.0-jre8-temurin

ENV TZ=Asia/Seoul
ENV CATALINA_OPTS="-Dfile.encoding=UTF-8"

# 기본 동봉 앱 제거 후 WAR를 ROOT로 배치
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
