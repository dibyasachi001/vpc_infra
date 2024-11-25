variable "vpc_id" {
  description = "VPC Id of VPC created by VPC_Module module"
  type        = string
}

variable "pvt_sub_cidr" {
    description = "List of private subnet cidr"
    type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}   