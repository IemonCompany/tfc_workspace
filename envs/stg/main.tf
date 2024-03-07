# ---------------------------------------------
# Resource
# ---------------------------------------------
resource "aws_vpc" "example" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name      = "TFC-vpc"
    ManagedBy = "terraform"
  }
}
