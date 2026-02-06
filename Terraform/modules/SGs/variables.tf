variable "my_ip" {
  description = "My IP address for SSH access"
  type        = string
  default     = "78.42.136.146/32"
}
variable "vpc_id" {
  description = "VPC ID where the security groups will be created"
  type        = string
}