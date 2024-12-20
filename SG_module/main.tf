#Create Security Group
resource "aws_security_group" "app_SG" {
  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = var.web_server
    content {
      description = "description of ingress"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  } 

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"          # "-1" means all protocols
    cidr_blocks = ["0.0.0.0/0"] # Allow all outbound traffic
  }

  tags = {
    Name = "${var.prefix_sg}"
  }
} 