FROM amazoncorretto:17

WORKDIR /app

COPY target/*.jar /app/app.jar

EXPOSE 80

CMD ["java", "-jar", "app.jar"]