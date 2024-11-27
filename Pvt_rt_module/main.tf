#Create Route Table for Private Subnet
resource "aws_route_table" "private_route_table" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.prefix_pvtrt}"
  }
}

#Private Route Table Association with Private Subnet
resource "aws_route_table_association" "private_route_table_association" {
  for_each = { for subnet, subnet in var.subnetids : subnet => subnet }
  # for_each       = {for subnet in var.subnetids : subnet => subnet}
  # for_each = toset(var.subnetids)
  subnet_id      = each.value
  route_table_id = aws_route_table.private_route_table.id
} 