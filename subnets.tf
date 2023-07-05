/***resource "aws_subnet" "ci_cd_public_subnet1" {
    vpc_id = "${aws_vpc.Myterraformvpc.vpc_id}"
    cidr_block = "192.168.1.0/24"
    map_public_ip_on_lauch = "true"
    availability_zone = "us-east-1"

    tags = {
    Name = "${var.subnets_names[0]}"
    Environment = "${var.my_env_tag}"
  }
  
} ***/
resource "aws_subnet" "ci_cd_public_subnet" {
    vpc_id = "${aws_vpc.Myterraformvpc.vpc_id}"
    count = 2
    cidr_block = "${var.cidr_blocks[count.index]}"
    map_public_ip_on_lauch = "true"
    availability_zone = "us-east-1"

    tags = {
    Name = "${var.subnets_names}${count.index}"
    Environment = "${var.my_env_tag}"
  }
  
}
/***
resource "aws_subnet" "ci_cd_public_subnet2" {
    vpc_id = "${aws_vpc.Myterraformvpc.vpc_id}"
    cidr_block = "192.168.64.0/24"
    map_public_ip_on_lauch = "true"
    availability_zone = "us-east-2"

    tags = {
    Name = "${var.subnets_names[0]}"
    Environment = "${var.my_env_tag}"
  }
  
} ***/

