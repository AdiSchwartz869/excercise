# excersise

APP
---
python3 flask -
hello.py

Build Docker image - 
---------------------
1. where the Dockerfile run: docker build -t <image_name> .

Download Docker Image -
---------------------
1. docker pull adish869/flask_proj

EKS deployment - 
--------------
1. one option to deploy EKS Cluster using eksctl -
eksctl create cluster -f cluster.yaml

2. second option to deploy - 
    - go to terraform folder 
    - set the variable (you should have private subnets and public with the following tags - 
    kubernetes.io/cluster/<cluster_name> shared
    kubernetes.io/role/internal-elb 1
    for more option see - https://aws.amazon.com/premiumsupport/knowledge-center/eks-vpc-subnet-discovery/)

3. run aws eks update-kubeconfig --region region-code --name cluster-name
4. run kubectl create -f deployment.yaml
5. check deployment - kubesctl get all