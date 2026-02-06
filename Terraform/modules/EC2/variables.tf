variable "key_pair_name" {
  description = "Name of the existing AWS key pair to use for SSH"
  type        = string
}
variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  type = string
}

variable "public_subnet_id" {
  type = string
}

variable "private_subnet_id" {
  type = string
}

variable "public_sg1_id" {
  type = string
}

variable "private_sg2_id" {
  type = string
}

variable "private_sg3_id" {
  type = string
}
