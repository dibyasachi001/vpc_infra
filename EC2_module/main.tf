#Create EC2 instance in public subnet
resource "aws_instance" "EC2_instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
#  count                       = length(var.subnetids) # Number of instances equals the number of subnets
  subnet_id                   = var.ec2_subnet_id
  vpc_security_group_ids      = var.ec2_sg_id
  key_name                    = var.ec2_key_name
  tags = {
    Name = "${var.ec2_name}"
  }
} 