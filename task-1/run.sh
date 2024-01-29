echo "Creating user\n"
kubectl config set-credentials martin --client-key /root/martin.key --client-certificate /root/martin.crt
sleep 0.15

echo "Creating context\n"
kubectl config set-context developer --cluster kubernetes --user martin
sleep 0.15

echo "Creating role\n"
kubectl apply -f role.yaml
sleep 0.15

echo "Creating role-binding\n"
kubectl apply -f rb.yaml
sleep 0.15

echo "Switching context to \"developer\"\n"
kubectl config use-context developer
sleep 0.15

echo "Creating pvc"
kubectl apply -f pvc.yaml
sleep 0.25

echo "Creating pod \"jekyll\""
kubectl apply -f pod.yaml
sleep 0.15

echo "Creating service \"Jekyll\""
kubectl apply -f svc.yaml
sleep 0.15

