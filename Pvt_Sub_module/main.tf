#Create Subnets
resource "aws_subnet" "Pvt_Subnet" {
  count = length(var.pvt_sub_cidr)
  vpc_id            = var.vpc_id
  cidr_block        = var.pvt_sub_cidr[count.index]
  availability_zone = var.availability_zones[count.index]
  tags = {
    Name = "private_subnet-${count.index + 1}"
  }
}  