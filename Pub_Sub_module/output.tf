# Public Subnet IDs
# output "public_subnet_ids" {
#   description = "The IDs of the public subnets"
#   value = [
#     for subnet in aws_subnet.Pub_Subnet :
#     subnet.id if contains(subnet.tags["pub_subnet"], var.prefix_subnet[0])
#   ]
# }

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value = aws_subnet.Pub_Subnet[*].id
}