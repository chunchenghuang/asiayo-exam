data "aws_availability_zones" "available" {}

data "aws_subnets" "selected" {
  filter {
    name   = "vpc-id"
    values = [aws_vpc.vpc.id]
  }

  tags = {
    Tier = "EKS"
  }
}