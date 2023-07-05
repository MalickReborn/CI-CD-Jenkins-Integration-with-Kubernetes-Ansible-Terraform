resource "aws_network_acl" "main" {
  count = length(aws_subnet.ci_cd_public_subnet)
  vpc_id = "${aws_vpc.Myterraformvpc.vpc_id}"
  subnet_id = var.ci_cd_public_subnet[count.index].id
  egress {
    protocol   = "tcp"
    rule_no    = 200
    action     = "allow"
    cidr_block = "10.3.0.0/18"
    from_port  = 443
    to_port    = 443
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "10.3.0.0/18"
    from_port  = 80
    to_port    = 80
  }

  tags = {
    Name = "acl${count.index}"
    Environment = "${var.my_env_tag}"
  }
}