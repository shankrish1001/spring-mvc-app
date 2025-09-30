# Use a base image with Tomcat and Java 8
FROM tomcat:8-jre8

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps

# Copy the built WAR file into the Tomcat webapps directory
# Replace 'your-application.war' with the actual name of your WAR file
COPY target/spring-mvc-app.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Command to start Tomcat when the container runs
CMD ["catalina.sh", "run"]

