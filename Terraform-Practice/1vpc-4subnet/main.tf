# create aws vpc 

resource "aws_vpc" "vp1" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "vp1"
    }
}


## create 4 aws subnet 

resource "aws_subnet" "sb1" {
    vpc_id = aws_vpc.vp1.id
    cidr_block = "10.0.0.0/24"

    tags = {
        Name = "sb1"
    }
    depends_on = [ aws_vpc.vp1 ]
}

# subnet2 

resource "aws_subnet" "sb2" {
    vpc_id = aws_vpc.vp1.id
    cidr_block = "10.0.1.0/24"
    
    tags = {
        Name = "sb2"
    }
    depends_on = [ aws_vpc.vp1 ]
}


# subnet 3

resource "aws_subnet" "sb3" {
  vpc_id = aws_vpc.vp1.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "sb3"
  }
  depends_on = [ aws_vpc.vp1 ]
}


# subnet 4

resource "aws_subnet" "sb4" {
    vpc_id = aws_vpc.vp1.id
    cidr_block = "10.0.3.0/24"
  
  tags = {
    Name = "sb4"
  }
  depends_on = [ aws_vpc.vp1 ]
}