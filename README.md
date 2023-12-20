# Local Deployment

## 1. Clean, install con compile project
> mvn clean install test compile

## 2. Build and run Docker Imagen with current compiled files
> docker build -t tomcat-taskmaker .
> docker run -p 8080:8080 tomcat-taskmaker

### Now, access the webapp:
[](http://localhost:8080/taskmakerv2-1.0)
