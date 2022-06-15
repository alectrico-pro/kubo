#requiere instalar kompose
#requiere instalar kubernetes
#requiere instalar docker
#require instalar docker compose
#requiere que existe docker-compose.yml
docker build -t kompose https://github.com/kubernetes/kompose.git
docker run --rm -it -v $PWD:/opt kompose sh -c "cd /opt && kompose convert"

#kompose convert
kubectl apply -f web-service.yaml
minikube start
alias kubectl="minikube kubectl --"
minikube kubectl -- get pods -A
minikube dashboard

#, db-deployment.yaml, db-claim0-persistentevolumeclaim.yml, web-deployment.yaml, alectrico-env-configmap.yaml, web-claim0-persistentvolumeclaim.yaml, bundle-cache-persistentvolumeclaim.yaml
