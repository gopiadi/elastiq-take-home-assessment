# OpenSearch on EKS using Operator

## Overview
This guide shows how to deploy an OpenSearch cluster on Amazon EKS (Elastic Kubernetes Service) using the OpenSearch Operator, with infrastructure managed by Terraform.

## Prerequisites
- AWS Account with necessary permissions
- Terraform (>= 1.0)
- kubectl
- AWS CLI configured

## Steps

### 1. **Configure AWS CLI*
aws configure

2. Deploy Infrastructure with Terraform
Navigate to the terraform/ directory and run:
cd terraform
terraform init
terraform apply

3. Setup EKS Access
Configure kubectl for the newly created EKS cluster:
aws eks --region <region> update-kubeconfig --name opensearch-cluster

4. Deploy OpenSearch Operator
kubectl apply -f kubernetes/opensearch-operator.yaml

5. Create OpenSearch Cluster
kubectl apply -f kubernetes/opensearch-cluster.yaml

6. Validate Deployment
Check the OpenSearch pods:
kubectl get pods -n opensearch


