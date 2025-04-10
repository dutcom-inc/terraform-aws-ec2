output "aws_ec2_id" {
  value = aws_instance.kaptngo.id
}

output "aws_ec2_name" {
  value = local.name
}

output "aws_ec2_ip" {
  value = var.private_ip
}