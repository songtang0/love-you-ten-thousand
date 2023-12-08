docker rm love --force
docker rmi love
docker build -t love:latest .
docker run -d --name=love -p 9002:80 love:latest
docker ps
