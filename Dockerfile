FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
COPY --from=build /home/ubuntu/workspace/FirstJob/webapp/target/*.war /usr/local/tomcat/webapps

