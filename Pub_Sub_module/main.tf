#Create Public Subnet
resource "aws_subnet" "Pub_Subnet" {
  count = length(var.pub_sub_cidr)
  vpc_id            = var.vpc_id
  cidr_block        = var.pub_sub_cidr[count.index]
  availability_zone = var.availability_zones[count.index]
  map_public_ip_on_launch = true
  tags = {
    Name = "public_subnet-${count.index + 1}"
  }
}   