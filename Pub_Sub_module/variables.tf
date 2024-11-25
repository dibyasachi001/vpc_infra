variable "vpc_id" {
  description = "VPC Id of VPC created by VPC_Module module"
  type        = string
}

variable "pub_sub_cidr" {
    description = "List of public subnet cidr"
    type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
} 