docker build -t localhost:32000/nginx-service:latest ./nginx-service
docker build -t localhost:32000/hello-server:latest ./hello-server
docker build -t localhost:32000/foobar-service:latest ./foobar-service

docker push localhost:32000/nginx-service:latest
docker push localhost:32000/hello-server:latest
docker push localhost:32000/foobar-service:latest

microk8s.kubectl apply -f ./nginx-service/nginx-service.yml
microk8s.kubectl apply -f ./foobar-service/foobar-service.yml
microk8s.kubectl apply -f ./hello-server/hello-server.yml