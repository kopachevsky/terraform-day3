module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = var.azs
  public_subnets  = var.public_subnets

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

resource "aws_instance" "web" {
  subnet_id = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.vpc.default_security_group_id]  
  ami           = "ami-0b9932f4918a00c4f"
  instance_type = var.instance_type

  iam_instance_profile = aws_iam_instance_profile.example_profile.name

  tags = {
    Name = "Terraform"
  }
}

