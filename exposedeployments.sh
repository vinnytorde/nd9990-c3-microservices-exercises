kubectl expose deployment udagram-frontend-deployment --type=LoadBalancer --name=publicfrontend;
kubectl expose deployment reverseproxy-deployment --type=LoadBalancer --name=publicreverseproxy;