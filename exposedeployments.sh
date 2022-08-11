# kubectl delete svc publicfrontend
# kubectl delete svc publicreverseproxy

kubectl expose deployment udagram-frontend-deployment --type=LoadBalancer --name=publicfrontend --port=80 --target-port=80
kubectl expose deployment reverseproxy-deployment --type=LoadBalancer --name=publicreverseproxy;

# start control plane
# create services
# get svc IP and change nginx conf
# push to docker
# create deployments
# expose deployments