#Stage backapp
FROM quay.io/drsylent/cubix/block2/homework-base:java17 AS backapp
LABEL cubix.homework.owner="Zsolt Hegedus"
ENV CUBIX_HOMEWORK="Zsolt Hegedus"
ENV APP_DEFAULT_MESSAGE=
COPY backapp/target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]

#Stage frontapp
FROM quay.io/drsylent/cubix/block2/homework-base:java17 AS frontapp
COPY frontapp/target/*.jar app.jar
LABEL cubix.homework.owner="Zsolt Hegedus"
ENV CUBIX_HOMEWORK="Zsolt Hegedus"
ENV APP_DEFAULT_MESSAGE=
# --back.url=http://localhost:8082 will be passwd in docker-compose.yml
CMD ["java", "-jar", "app.jar"]
