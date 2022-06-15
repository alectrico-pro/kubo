#requiere instalar kompose
#requiere instalar kubernetes
#requiere instalar docker
#require instalar docker compose
#requiere que existe docker-compose.yml

kompose convert
#minikube kubectl -- apply -f web-service.yaml
#minikube kubectl -- apply -f db-deployment.yaml
#, web-deployment.yaml, alectrico-env-configmap.yaml, web-claim0-persistentvolumeclaim.yaml, bundle-cache-persistentvolumeclaim.yaml
#minikube start
#alias kubectl="minikube kubectl --"
#minikube kubectl -- get pods -A
#minikube dashboard

# web-service.yaml , db-deployment.yaml, db-claim0-persistentevolumeclaim.yml, web-deployment.yaml, alectrico-env-configmap.yaml, web-claim0-persistentvolumeclaim.yaml, bundle-cache-persistentvolumeclaim.yaml
