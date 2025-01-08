# aws vpc 

resource "aws_vpc" "vnet" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vnet"
  }

}