module "vpc" {
  name = "EKS-VPC"
  cidr = "10.1.0.0/16"
  azs = data.aws_availability_zone.available.names
}