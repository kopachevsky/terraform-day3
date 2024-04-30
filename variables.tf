variable "azs" {
  type = list(string)
  default = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}

variable "public_subnets" {
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "s3_bucket_name" {
  type = string
  default = "my-tf-test-bucket-kate-snake"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}
