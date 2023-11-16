#deploy.sh

docker pull registry.cn-beijing.aliyuncs.com/songtang/love:latest
docker stop love
docker rm love
docker run --name love -d -p 80:80 love
docker image prune -f
docker container prune -f
