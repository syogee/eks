module "vpc" {
  name = "EKS-VPC"
  cidr = "10.1.0.0/16"
  azs = data.aws_availability_zone.available.names
  public_subnets = ["10.0.1.0/24","10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24","10.0.4.0/24"]
  enable_nat_gateway = true
}