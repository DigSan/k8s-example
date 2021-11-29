kubectl apply -f nntc-regestry.yaml

helm install rabbitmq rabbitmq/
helm install redis redis/

helm install capital-resources capital-resources/
