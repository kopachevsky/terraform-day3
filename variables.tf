variable "s3_bucket_name" {
  description = "Назва бакету S3"
  type        = string
}

variable "instance_type" {
  description = "Тип EC2 інстансу"
  type        = string
}

variable "azs" {
  description = "Список зон доступності"
  type        = list(string)
}
