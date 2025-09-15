# clean:clean
# war:war

Build the Docker Image:
docker build -t spring-mvc-app-img .

Run the Docker Container:
docker run -d -p 8080:8080 --name spring-mvc-app-cnt spring-mvc-app-img

Access the App:
http://localhost:8080/

(OR)
1-Set jar mode and spring-mvc-app as finalName
2-Add docker file in this project
FROM openjdk:8-jdk-alpine
EXPOSE 8080
ADD target/spring-mvc-app.jar spring-mvc-app.jar
ENTRYPOINT ["java", "-jar", "spring-mvc-app.jar"]

3-Login and build local docker image
docker login
docker build -t java8-demo .
4-Push this to hub.docker.com
docker tag java8-demo shankrish1001/java8-demo
docker push shankrish1001/java8-demo
5-Remove java8-demo image of local and online
docker rmi java8-demo shankrish1001/java8-demo
6-Pull the same image from hub.docker.com
docker run --name test-my-image -p 8080:8080 shankrish1001/java8-demo
7-Test all REST API once again

