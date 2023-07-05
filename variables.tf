variable "my_env_tag" {
    description = "global environment tag"
    type = string
    default = "aws_dev"
  
}

variable "subnet_names" {
    description = "subnets list"
    type = list()
    default = ["public1", "public2"]

}

variable "aws_internet_gateway" {
    description = "gateway name"
    type = string
    default = "igw"
}

variable "route_tables_name" {
    description = "tags"
    type = list()
    default = ["rt1", "rt2"]
  
}
variable "pub_rt_names" {
    type = list()
    default = ["pb_rt1", "pb_rt2"]
  
}

