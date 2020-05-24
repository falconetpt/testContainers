FROM maven:3.6.3-jdk-8-openj9

COPY . /app
RUN /app/ci/build.sh app
EXPOSE 8080

CMD java -jar /app/app.jar
