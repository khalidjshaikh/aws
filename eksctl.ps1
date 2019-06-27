# if($env:http_proxy)  { remove-item Env:http_proxy  }
# if($env:https_proxy) { remove-item Env:https_proxy }

# $env:AWS_ACCESS_KEY_ID='AKIAUG3YR5U3VAINVX73'
# $env:AWS_SECRET_ACCESS_KEY='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'

eksctl create cluster
# 16 minutes

# aws eks update-kubeconfig --name hilarious-creature-1557804590 --no-verify-ssl
# eksctl utils write-kubeconfig --name amazing-monster-1561396862
# kubectl get nodes
# kubectl get all

# alpha.eksctl.io/cluster-name
# eksctl.cluster.k8s.io/v1alpha1/cluster-name

# 2 CloudFormation
# 1 EKS

# eksctl-hilarious-creature-1557804590-nodes
# 2 EC2                 # node.json
# 2 Volumes             # node.json

# eksctl-attractive-creature-1557934933-cluster
# 1 Elastic IP          # cluster.json
# 1 VPC                 # cluster.json
# 4 subnets
# 3 Route tables
# 1 Internet Gateway
# 1 DHCP
# 2 NAT Gateways
# 1 Network ACLs
# 4 Security Groups

for($i=1; $i -le 5; $i++) {
  Write-Output "$i"
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

# eksctl delete cluster --name amazing-monster-1561396862
# manually delete NAT gateway
# manually delete DHCP

# PS C:\Users\503125288> eksctl create cluster                                                                            [ℹ]  using region us-east-1
# [ℹ]  setting availability zones to [us-east-1a us-east-1c]
# [ℹ]  subnets for us-east-1a - public:192.168.0.0/19 private:192.168.64.0/19
# [ℹ]  subnets for us-east-1c - public:192.168.32.0/19 private:192.168.96.0/19
# [ℹ]  nodegroup "ng-f3889361" will use "ami-0abcb9f9190e867ab" [AmazonLinux2/1.12]
# [ℹ]  creating EKS cluster "amazing-monster-1561396862" in "us-east-1" region
# [ℹ]  will create 2 separate CloudFormation stacks for cluster itself and the initial nodegroup
# [ℹ]  if you encounter any issues, check CloudFormation console or try 'eksctl utils describe-stacks --region=us-east-1 --name=amazing-monster-1561396862'
# [ℹ]  2 sequential tasks: { create cluster control plane "amazing-monster-1561396862", create nodegroup "ng-f3889361" }
# [ℹ]  building cluster stack "eksctl-amazing-monster-1561396862-cluster"
# [ℹ]  deploying stack "eksctl-amazing-monster-1561396862-cluster"
# [ℹ]  building nodegroup stack "eksctl-amazing-monster-1561396862-nodegroup-ng-f3889361"
# [ℹ]  --nodes-min=2 was set automatically for nodegroup ng-f3889361
# [ℹ]  --nodes-max=2 was set automatically for nodegroup ng-f3889361
# [ℹ]  deploying stack "eksctl-amazing-monster-1561396862-nodegroup-ng-f3889361"
# [✔]  all EKS cluster resource for "amazing-monster-1561396862" had been created
# [✔]  saved kubeconfig as "C:\\Users\\503125288/.kube/config"
# [ℹ]  adding role "arn:aws:iam::289626254647:role/eksctl-amazing-monster-1561396862-NodeInstanceRole-MSMOWDPE9Z60" to auth ConfigMap
# [ℹ]  nodegroup "ng-f3889361" has 0 node(s)
# [ℹ]  waiting for at least 2 node(s) to become ready in "ng-f3889361"
# [ℹ]  nodegroup "ng-f3889361" has 2 node(s)
# [ℹ]  node "ip-192-168-13-7.ec2.internal" is ready
# [ℹ]  node "ip-192-168-57-180.ec2.internal" is ready
# [ℹ]  kubectl command should work with "C:\\Users\\503125288/.kube/config", try 'kubectl get nodes'
# [✔]  EKS cluster "amazing-monster-1561396862" in "us-east-1" region is ready

# PS C:\Users\503125288> eksctl delete cluster --name amazing-monster-1561396862                                          [ℹ]  using region us-east-1
# [ℹ]  deleting EKS cluster "amazing-monster-1561396862"
# [✔]  kubeconfig has been updated
# [ℹ]  2 sequential tasks: { delete nodegroup "ng-f3889361", delete cluster control plane "amazing-monster-1561396862" [async] }
# [ℹ]  will delete stack "eksctl-amazing-monster-1561396862-nodegroup-ng-f3889361"
# [ℹ]  waiting for stack "eksctl-amazing-monster-1561396862-nodegroup-ng-f3889361" to get deleted
# [ℹ]  will delete stack "eksctl-amazing-monster-1561396862-cluster"
# [✔]  all cluster resources were deleted
