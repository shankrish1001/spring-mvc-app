# Use an official Tomcat 9 base image with Java 8
FROM tomcat:9.0-jdk8-openjdk

# Maintainer info (optional)
LABEL maintainer="shankrish8080@gmail.com"

# Clean default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the webapps directory
COPY target/spring-mvc-app.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (Tomcat default)
EXPOSE 8080

# Start Tomcat (default CMD in base image already starts Tomcat)
CMD ["catalina.sh", "run"]
