variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
}

variable "ec2_key_name" {
  description = "The name of the key pair to access the instance"
  type        = string
} 

variable "ec2_subnet_id" {
  description = "Subnet id"
  type = string
}

variable "ec2_name" {
  description = "EC2 instances name"
  type = string
}

variable "ec2_sg_id" {
  description = "Security group id"
  type = list(string)
} 