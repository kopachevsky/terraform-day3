# terraform-day3

Create terraform module that accepting following variables:

- azs - list(string)
- instance type string
- s3_bucket_name - name of the s3 bucket

  Module should create VPC using standard AWS modules, with only public subnets, each subnet per availability zone item from *azs* variable
  Create AWS instance in one of subnet
  
  Not mandatory:
  Create s3 bucket with name provided
  Create IAM role granding access to this bucket and attach this Role to EC2 instance created above


Return VPC id and instance ID

Add example terraform code.
