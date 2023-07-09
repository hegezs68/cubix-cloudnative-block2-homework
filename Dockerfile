#Stage backapp
FROM quay.io/drsylent/cubix/block2/homework-base:java17
LABEL cubix.homework.owner="Zsolt Hegedus"
ENV CUBIX_HOMEWORK="Zsolt Hegedus"
ENV APP_DEFAULT_MESSAGE=
COPY ${TARGET_PATH}/*.jar app.jar
CMD ["java", "-jar", "app.jar"]

