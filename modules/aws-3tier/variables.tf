# prj
variable "project_name" {
  default = "bamboo"
  type    = string
}
variable "environment" {
  default = "ec2-test"
}

# network
variable "cidr_vpc" {
  default = "192.168.0.0/16"
}
variable "cidr_public1" {
  default = "192.168.1.0/24"
}
variable "cidr_public2" {
  default = "192.168.2.0/24"
}


variable "cidr_private1" {
  default = "192.168.10.0/24"
}
variable "cidr_private2" {
  default = "192.168.20.0/24"
}

variable "cidr_rds2a" {
  default = "192.168.100.0/24"
}
variable "cidr_rds2c" {
  default = "192.168.200.0/24"
}


# Bastion AMI를 미리 콘솔에서 생성해 주어야 합니다.
variable "bastion_instance_type" {
  default = "t3.micro"
}
variable "bastion_key_name" {
  default = "ec2-ssh-key"
}
variable "bastion_volume_size" {
  default = "10"
}
variable "bastion_volume_type" {
  default = "gp3"
}

# Private EC2
variable "private_ec2_instance_type" {
  default = "t3.medium"
}
variable "private_ec2_key_name" {
  default = "ec2-ssh-key"
}
variable "private_ec2_volume_size" {
  default = "10"
}
variable "private_ec2_volume_type" {
  default = "gp3"
}

variable "db_password" {
  description = "RDS root user password"
  type        = string
  sensitive   = true
}
