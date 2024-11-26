# Private Subnet IDs
# output "private_subnet_ids" {
#   description = "The IDs of the private subnets"
#   value = [
#     for subnet in aws_subnet.Pvt_Subnet :
#     subnet.id if contains(subnet.tags["pvt_subnet"], var.prefix_subnet[1])
#   ]
# }

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value = aws_subnet.Pvt_Subnet[*].id
}