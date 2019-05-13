
for($i=1; $i -le 5; $i++) {
  kubectl run mc$i --replicas=2 --image=289626254647.dkr.ecr.us-east-1.amazonaws.com/mc$i
  kubectl expose deployment mc$i --type=LoadBalancer --port 80
}

# kubectl delete pods --all
# kubectl delete replicaset --all
# kubectl delete deployment --all
# kubectl delete service --all
