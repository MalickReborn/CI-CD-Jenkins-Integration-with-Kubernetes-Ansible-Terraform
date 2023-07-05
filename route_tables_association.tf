resource "aws_route_table_association" "public1" {
    for_each = toset("${aws_route_table.rt_public}")
    subnet_id      = aws_subnet.ci_cd_public_subnet[count.index].id
    route_table_id = each.key.id
    
    tags = {
        
    }
}

resource "aws_route_table_association" "public2" {
    
    subnet_id      = aws_subnet.public1.id
    route_table_id = aws_route_table.rt_public
}

