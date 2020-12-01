# DevOps Assignment!
This project is intended to submit my candidature for the position as DevSecOps Engineerr.  To successful run this project you need to setup few things as prerequisites.

### Github Secrets
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `GHUB_TOKEN`
- `TF_API_TOKEN`

### IAM Authenticattion

The AWS credentials used must be associated with a user having at least the following AWS managed IAM policies

* IAMFullAccess
* AutoScalingFullAccess
* AmazonEKSClusterPolicy
* AmazonEKSWorkerNodePolicy
* AmazonVPCFullAccess
* AmazonEKSServicePolicy
* AmazonEKS_CNI_Policy
* AmazonEC2FullAccess

### Terraform
We have used `S3` as remote backend to store our tfstate file, For this need to create bucket named **lovebonito-tfstate**

### Github Actions
**deploy.yaml** Need to update following value  `aws-region` `EKS_CLUSTER_NAME` `KUBECONFIG_CLUSTER_NAME` 


# Challenges
- For Terrraform backend bucket created in wrong region
- Terraform.yaml missed the TF_IN_AUTOMATION flag, as a result of this apply get failed
- deploy.yaml faced issue with kube config data
