data "aws_ami" "this" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}
resource "aws_instance" "this" {
  ami                  = data.aws_ami.this.id
  instance_type        = var.instance_type
  subnet_id            = module.vpc[0].public_subnets[0]
  iam_instance_profile = aws_iam_instance_profile.example.name
  tags                 = {
    Name        = "Ec2_example"
    Description = "Create AWS instance in one of subnet"
  }
}




