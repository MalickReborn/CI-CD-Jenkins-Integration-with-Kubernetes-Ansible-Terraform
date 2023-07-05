

resource "aws_route_table" "rt_public" {
  for_each = toset("${var.pub_rt_names}")
  vpc_id = aws_vpc.Myterraformvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = each.key
    Environment = "${var.my_env_tag}"
  }
}

