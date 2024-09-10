output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "public_subnet_ids" {
  value = aws_subnet.public_subnets[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private_subnets[*].id
}

output "rds_endpoint" {
  value = aws_db_instance.main_rds.endpoint
}

output "ec2_instance_public_ips" {
  value = aws_instance.web[*].public_ip
}
