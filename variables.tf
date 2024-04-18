variable "azs" {
  type    = list(string)
  default = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "s3_bucket_name" {
  type    = string
  default = "my-terraform-bucket-unique-name-1"
}
