resource "aws_security_group" "eks-sg" {
  name = "EKS-SG"
  description = "SG for Eks cluster"
  vpc_id = module.vpc.vpc_id
  ingress {
    description = "ssh port"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  ingress {
    description = "Http port"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}