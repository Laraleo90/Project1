##### Outputs for instances #####

# Frontend
output "instance_id1" {
  description = "ID of the EC2 instance"
  value       = aws_instance.frontendserver.id
}

output "instance_public_ip1" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.frontendserver.public_ip
}

output "instance_public_dns1" {
  description = "Public DNS of the EC2 instance"
  value       = aws_instance.frontendserver.public_dns
}

output "ami_id1" {
  description = "AMI ID used for the instance"
  value       = aws_instance.frontendserver.ami
}


# Backend
output "instance_id2" {
  description = "ID of the EC2 instance"
  value       = aws_instance.backendserver.id
}

output "instance_public_ip2" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.backendserver.public_ip
}

output "instance_public_dns2" {
  description = "Public DNS of the EC2 instance"
  value       = aws_instance.backendserver.public_dns
}

output "ami_id2" {
  description = "AMI ID used for the instance"
  value       = aws_instance.backendserver.ami
}


# DB
output "instance_id3" {
  description = "ID of the EC2 instance"
  value       = aws_instance.dbserver.id
}

output "instance_public_ip3" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.dbserver.public_ip
}

output "instance_public_dns3" {
  description = "Public DNS of the EC2 instance"
  value       = aws_instance.dbserver.public_dns
}

output "ami_id3" {
  description = "AMI ID used for the instance"
  value       = aws_instance.dbserver.ami
}