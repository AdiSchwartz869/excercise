# Excercise

APP
---
Python3 flask -
To run - python hello.py

Build and run Docker image locally - 
---------------------------------
1. Where the Dockerfile run: docker build -t <image_name:tag> .
2. Run - docker run -p 80:80 <image_name:tag>

Download Docker Image from dockerhub -
-------------------------------------
1. Run - docker pull adish869/flask_proj

EKS deployment - 
--------------
1. One option to deploy EKS Cluster using eksctl (creates subnets) -
eksctl create cluster -f cluster.yaml

2. Second option to deploy using Terraform (use existing subnets) - 
    - go to terraform folder 
    - set the variables in terraform.tfvars (you should have private subnets and public with the following tags - 
    kubernetes.io/cluster/<cluster_name> shared
    kubernetes.io/role/internal-elb 1
    for more option see - https://aws.amazon.com/premiumsupport/knowledge-center/eks-vpc-subnet-discovery/)
    - Run - terraform init
    - Run - terraform applay

3. Check deployment - kubesctl get all or kubectl get svc and get the LB external IP (DNS)
4. Run DNS on browser to see "Hello Illusive"

* to set EKS Run -  aws eks update-kubeconfig --region region-code --name cluster-name