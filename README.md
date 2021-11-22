# AWS VPC EC2 Instances in Public Subnet using Terraform

![image](https://drive.google.com/uc?export=view&id=1HF_LdljX2_tRpZWt6tlXOi8e5q3tTXa0)

## Pre-requisite

- Create `private-key` folder
- Copy your AWS EC2 Key pair `terraform-key.pem` in `private-key` folder

## Populating Variables

The values for these variables should be placed into terraform.tfvars. Simply copy terraform.tfvars.example to terraform.tfvars and edit it with the proper values.

## Execute Terraform Commands

terraform init

terraform validate

terraform plan

terraform apply

## Verify via AWS Management Console

Observation:

1) Verify EC2 Instances created
2) Verify VPC
3) Verify Subnets
4) Verify IGW
5) Verify Public Route for Public Subnets
6) Verify Tags

## Connect to EC2 Instance and Test

```t
# Connect to EC2 Instance from local desktop
ssh -i private-key/terraform-key.pem ec2-user@<PUBLIC_IP>
cd /var/www/html
ls -lrta
```

1) Should find index.html
2) Should find app folder
3) Should find app/index.html file
4) Should find app/metadata.html file
5) curl <http://PRIVATE_IP>

## Web Browser Test

Access using <http://PUBLIC_IP>

## Terraform Destroy

terraform destroy

## Clean-Up

rm -rf .terraform*

rm -rf terraform.tfstate*
