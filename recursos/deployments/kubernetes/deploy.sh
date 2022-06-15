minikube kubectl -- apply -f web-deployment.yaml
minikube kubectl -- apply -f db-deployment.yaml
minikube kubectl -- apply -f  db-claim0-persistentvolumeclaim.yaml
minikube kubectl -- apply -f web-claim0-persistentvolumeclaim.yaml
minikube kubectl -- apply -f bundle-cache-persistentvolumeclaim.yaml
minikube kubectl -- expose deployment web --type=LoadBalancer --port=4000
minikube service --all
#minikube tunnel
#en otra ventana


