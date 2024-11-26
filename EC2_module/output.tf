
output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.EC2_instance[*].id
}

output "ec2_instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.EC2_instance[*].public_ip
}

output "ec2_instance_private_dns" {
  description = "The private IP of the EC2 instance"
  value = aws_instance.EC2_instance[*].private_dns
}
 