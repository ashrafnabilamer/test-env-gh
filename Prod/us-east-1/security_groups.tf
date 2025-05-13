module "vote_service_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "user-service"
  description = "Security group for user-service with custom ports open within VPC, and PostgreSQL publicly open"
  vpc_id      = "vpc-0b2f66cbc6d240601"
  
  ingress_cidr_blocks      = ["10.10.0.0/16"]
  ingress_rules            = ["https-443-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 8080
      to_port     = 8099
      protocol    = "tcp"
      description = "User-service ports range 2"
      cidr_blocks = "10.10.0.0/16"
    },
    {
      from_port   = 5056
      to_port     = 5058
      protocol    = "tcp"
      description = "Custom Ports"
      cidr_blocks = "10.10.0.0/16"
    }
    ,
    {
      rule        = "postgresql-tcp"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 5066
      to_port     = 5077
      protocol    = "tcp"
      description = "User-service ports range"
      cidr_blocks = "10.10.0.0/16"
    },
    {
      from_port   = 5088
      to_port     = 5099
      protocol    = "tcp"
      description = "User-service ports range 2"
      cidr_blocks = "10.10.0.0/16"
    },
     {
      from_port   = 6055
      to_port     = 6070
      protocol    = "tcp"
      description = "User-service ports range4"
      cidr_blocks = "10.10.0.0/16"
    },
  ]
}