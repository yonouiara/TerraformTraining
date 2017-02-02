# Provides an VPC resource.
resource "aws_vpc" "myvpc" {
    #The CIDR block for the VPC.
    cidr_block = "10.0.0.0/16"
}
