echo "Creating namespace \"vote\""
kubectl create namespace vote
sleep 0.25

echo "Setting default namespace to \"vote\""
kubectl config set-context --current --namespace vote
sleep 0.25

echo "Provisioning resrouces:"
kubectl apply -f vote-service.yaml
sleep 0.25
kubectl apply -f vote-deployment.yaml
sleep 0.25
kubectl apply -f redis-deployment.yaml
sleep 0.25
kubectl apply -f redis-service.yaml
sleep 0.25
kubectl apply -f db-deployment.yaml
sleep 0.25
kubectl apply -f db.yaml
sleep 0.25
kubectl apply -f worker-deployment.yaml
sleep 0.25
