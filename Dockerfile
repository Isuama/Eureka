FROM openjdk:8-jre-alpine

CMD mkdir app

WORKDIR app

COPY target/EurekaServer-1.0.0.jar .

EXPOSE 8761

ENV config_server http://localhost:8888
ENV eureka_port 8761

CMD java -jar -Durl.config-server=${config_server} -Deureka.port=${eureka_port} EurekaServer-1.0.0.jar
