echo "Creating user"
kubectl config set-credentials martin --client-key /root/martin.key --client-certificate /root/martin.crt
echo "Creating context"
kubectl config set-context developer --cluster kubernetes --user martin
