kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.4/deploy/static/provider/cloud/deploy.yaml

helm install auth auth/

kubectl apply -f nntc-regestry.yaml

helm install rabbitmq rabbitmq/

helm install redis redis/

helm install capital-resources capital-resources/

helm install infrastructure infrastructure/
