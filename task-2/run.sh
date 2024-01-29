echo "Setting new image cor coredns"
kubectl set image deployment/coredns -n kube-system coredns=registry.k8s.io/coredns/coredns:v1.8.6
sleep 0.35

echo "Removing cordon from node01"
kubectl uncordon node01
sleep 0.35

echo "Copying to node01"
scp /media/* node01:/web
sleep 0.35

echo "Provisioning resrouces"
kubectl apply -f 
