FROM openjdk:17

RUN mkdir /app

COPY App.java /app

WORKDIR /app

RUN javac App.java

CMD ["java","App"]

docker build -t img .
docker run img
docker login -u kiranmorab29 -p dckr_pat_9HGvY0-2W1RBnniyFb1WuKv4EXs
docker tag img kiranmorab29/my-react-app:latest
docker push kiranmorab29/my-react-app:latest
