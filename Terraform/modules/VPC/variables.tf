
variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "my_ip" {
  description = "My IP address for SSH access"
  type        = string
  default     = "78.42.136.146/32"
}

variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}
