echo "Creating user"
kubectl config set-credentials martin --client-key /root/martin.key --client-certificate /root/martin.crt
echo "Creating context"
kubectl config set-context developer --cluster kubernetes --user martin
echo "Creating namespace \"developer\""
kubectl create ns developer
echo "Creating role"
kubectl apply -f role.yaml
