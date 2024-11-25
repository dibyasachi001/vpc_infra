#Create Route Table for Public Subnet
resource "aws_route_table" "public_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }

  tags = {
    Name = "${var.prefix_pubrt}"
  }
}

#Public Route Table Association with Public Subnet
resource "aws_route_table_association" "public_route_table_association" {
  for_each = {for subnet in var.subnetids : subnet => subnet}
  # for_each = toset(var.subnetids)
  subnet_id = each.value
  route_table_id = aws_route_table.public_route_table.id
}  