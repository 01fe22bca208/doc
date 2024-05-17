FROM openjdk:17

RUN mkdir /app

COPY App.java /app

WORKDIR /app

RUN javac App.java

CMD ["java","App"]