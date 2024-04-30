output "vpc_id" {
    value = module.vpc.default_vpc_id
}

output "instance_id" {
    value = aws_instance.web.id
}