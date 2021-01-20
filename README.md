Description:
============

Aws wordpress terraform provisioning. This will create following services:

- VPC and it's components
- Subnets, Route Tables, Internet Gateway, Nat Gateway.
- EC2 instance (Ubuntu 18.04)
- EIP for NAT Gateway
- RDS MySql instance.
- Security Groups to access both EC2 and MySql

Note:
-----
You may get charged by aws for using services

### Pre-requisite:

   1. You need to have Ssh keys generated and should be put into `~/.ssh/`
   2. Create an IAM user and create security credentials (AccessKey, SecretKey) and update `~/.aws/credentials`
   3. Create a `terraform.tfvars` with variables for database:
      ```
      username = "wordpressuser"
      password = "wordpresspassword"
      dbname = "wordpressdb"
      ```

Usage:
======

Provisioning:
-------------

1. `git clone https://github.com/MrDiben/aws-tf-wp.git`
2. `cd aws-tf-wp`
2. `terraform init`
3. `terraform plan`
4. `terraform apply -auto-approve`

Destroying the Infra:
---------------------
1. `cd aws-tf-wp`
2. `terraform destroy -auto-approve`

Versions:
---------

Terraform v0.13.2
+ provider.aws v2.12.0
+ provider.template v2.1.2
