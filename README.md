## prerequisite
we are basing our image on a stripped java8 image. To build fee service as a docker container you will need to build java8 image first
navigate to `docker-images/java8-tiny` folder and run
```make build-docker```

## build
To build the fee evidence service run the maven command below
```mvn clean install```  or ```make build-docker```
As a result you will get spring boot jar along with the docker container tagged with the same version the spring boot artifact

## checkstyle
to run the checkstyle 
```mvn checkstyle:checkstyle```

## running docker container
to run docker container using command you can execute one line
```docker run -d -p 8080:8080 acuma/fee-service:latest```

## running via docker-compose
`deployment` directory contains set of compose files which will help running the service and wire to other docker containers. 
Currently the composition happens between api and mongo
 ```
 cd deployment/docker-compose
 docker-compose up 
 ```