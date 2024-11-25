variable "prefix_pubrt" {
  description = "RT tags"
  type = string
}

variable "subnetids" {
  description = "List of subnet ids"
  type = list(string)
}

variable "vpc_id" {
  description = "VPC Id"
  type = string
}

variable "igw_id" {
  description = "IGW Id"
  type = string
}  