resource "aws_security group" "SG" {
    for_each = {
      "SG1" = "SGpublic1"
      "SG2" = "SGpublic2"
    }
    name = each.value
    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = "0.0.0.0/0"
    }
    
    tags ={
        Environment = "${var.my_env_tag}"
    }
}