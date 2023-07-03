resource "aws_vpc" "Myterraformvpc" {
    cidr_block = "192.168.0.0/16"
    instance_tenancy = "default"
    count = terraform.workspace == "ci.cd_test" ? 1 : 0
    enable_dns_support = true
    enable_dns_hostnames = true
    availability_zone = element ()

    tags = {
        Name = "Myterraformvpc"
        Environment = "${var.my_env_tag}"
    }
  
}