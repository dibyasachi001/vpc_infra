variable "prefix_sg" {
  description = "Security group tags"
  type = string
}

variable "web_server" {
  description = "Ingress port values"
  type = list(number)
} 

variable "vpc_id" {
  description = "VPC Id"
  type = string
} 