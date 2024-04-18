module "vpc" {
  count  = length(var.azs)
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc-${count.index}"
  cidr = "10.0.0.0/16"

  azs            = [var.azs[count.index]]
  public_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
