resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.Myterraformvpc.vpc_id}"

  tags = {
    Name = "${var.internet_gateway}"
    Environment = "${var.my_env_tag}"
  }
}