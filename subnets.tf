resource "aws_subnet" "ci_cd_public_subnet" {
    vpc_id = "${aws_vpc.Myterraformvpc.vpc_id}"
    cidr_block = "192.168.1.0/24"
    map_public_ip_on_lauch = "true"
    availability_zone = "us-east-1"

    tags = {
    Name = "Main"
    Environment = "dev"
  }
  
}