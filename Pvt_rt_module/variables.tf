variable "prefix_pvtrt" {
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