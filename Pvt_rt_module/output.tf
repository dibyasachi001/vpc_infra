#Private Route Table IDs
output "private_route_table_id" {
  description = "The ID of the private route table"
  value       = aws_route_table.private_route_table.id
} 

# Private Route Table Association IDs
# output "private_route_table_association_ids" {
#   description = "The IDs of the private route table associations"
#   value       = [for association in aws_route_table_association.private_subnet_association : association.id]
# }