#### Terrafrom main ####
terraform {
  required_version = ">= 1.8.0"
}
provider "aws" {
  region = "us-east-1"
}
# Data 
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}


# VPC node_modules
module "vpc" {
  source = "./modules/vpc"
}


# SG SG Module 
module "security_groups" {
  source = "./modules/sgs"

  vpc_id = module.vpc.vpc_id
}

# EC2 Instances Module 
module "ec2" {
  source = "./modules/ec2"

  ami_id             = data.aws_ami.ubuntu.id
  public_subnet_id   = module.vpc.public_subnet_id
  private_subnet_id  = module.vpc.private_subnet_id

  public_sg1_id       = module.security_groups.public_sg1_id
  private_sg2_id     = module.security_groups.private_sg2_id
  private_sg3_id     = module.security_groups.private_sg3_id

  key_pair_name          = "project1_lara" 
}


