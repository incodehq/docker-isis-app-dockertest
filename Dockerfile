FROM incodehq/tomcat
MAINTAINER Incode Software, incode.org
RUN rm -rf ${DEPLOYMENT_DIR}/ROOT
COPY isis-app-dockertest.war ${DEPLOYMENT_DIR}/ROOT.war
EXPOSE 8080