eksctl create cluster
# 16 minutes

eksctl utils write-kubeconfig --name exciting-badger-1557783835
kubectl get nodes
kubectl get all

# 2 EC2
# 2 Volumes
# 1 Elastic IP
# 2 CloudFormation
# 1 EKS

# 1 VPC
# 4 subnets
# 3 Route tables
# 1 Internet Gateway
# 1 DHCP
# 1 Elastic IP
# 2 NAT Gateways
# 1 Network ACLs
# 4 Security Groups

for($i=1; $i -le 5; $i++) {
  kubectl run mc$i --replicas=2 --image=289626254647.dkr.ecr.us-east-1.amazonaws.com/mc$i
  kubectl expose deployment mc$i --type=LoadBalancer --port 80
}

# 5 ELB
# 10 Pods             # Docker
# 5 Deployment.Apps   # Docker
# 5 Replicasets       # Docker

# kubectl delete pods --all
# kubectl delete replicaset --all
# kubectl delete deployment --all
# kubectl delete service --all

# eksctl delete cluster --name exciting-badger-1557783835
# manually delete VPC
# manually delete DHCP

# PS C:\Users\503125288\projects\aws> eksctl create cluster
# [ℹ]  using region us-east-1
# [ℹ]  setting availability zones to [us-east-1b us-east-1c]
# [ℹ]  subnets for us-east-1b - public:192.168.0.0/19 private:192.168.64.0/19
# [ℹ]  subnets for us-east-1c - public:192.168.32.0/19 private:192.168.96.0/19
# [ℹ]  nodegroup "ng-79974d0f" will use "ami-0abcb9f9190e867ab" [AmazonLinux2/1.12]
# [ℹ]  creating EKS cluster "fabulous-mushroom-1557779862" in "us-east-1" region
# [ℹ]  will create 2 separate CloudFormation stacks for cluster itself and the initial nodegroup
# [ℹ]  if you encounter any issues, check CloudFormation console or try 'eksctl utils describe-stacks --region=us-east-1 --name=fabulous-mushroom-1557779862'
# [ℹ]  2 sequential tasks: { create cluster control plane "fabulous-mushroom-1557779862", create nodegroup "ng-79974d0f" }
# [ℹ]  building cluster stack "eksctl-fabulous-mushroom-1557779862-cluster"
# [ℹ]  deploying stack "eksctl-fabulous-mushroom-1557779862-cluster"
# [ℹ]  building nodegroup stack "eksctl-fabulous-mushroom-1557779862-nodegroup-ng-79974d0f"
# [ℹ]  --nodes-min=2 was set automatically for nodegroup ng-79974d0f
# [ℹ]  --nodes-max=2 was set automatically for nodegroup ng-79974d0f
# [ℹ]  deploying stack "eksctl-fabulous-mushroom-1557779862-nodegroup-ng-79974d0f"
# [✔]  all EKS cluster resource for "fabulous-mushroom-1557779862" had been created
# [✔]  saved kubeconfig as "C:\\Users\\503125288/.kube/config"
# [ℹ]  adding role "arn:aws:iam::289626254647:role/eksctl-fabulous-mushroom-15577798-NodeInstanceRole-U6Z71DS541F" to auth ConfigMap
# [ℹ]  nodegroup "ng-79974d0f" has 0 node(s)
# [ℹ]  waiting for at least 2 node(s) to become ready in "ng-79974d0f"
# [ℹ]  nodegroup "ng-79974d0f" has 2 node(s)
# [ℹ]  node "ip-192-168-22-236.ec2.internal" is ready
# [ℹ]  node "ip-192-168-32-153.ec2.internal" is ready
# [ℹ]  kubectl command should work with "C:\\Users\\503125288/.kube/config", try 'kubectl get nodes'
# [✔]  EKS cluster "fabulous-mushroom-1557779862" in "us-east-1" region is ready
# PS C:\Users\503125288\projects\aws>
