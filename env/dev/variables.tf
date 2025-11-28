# prj
variable "project_name" { default = "bamboo" } 
variable "environment" { default = "ec2-test" }
variable "key_pair" { default = "bastion" }

# VPC
variable "cidr_vpc"        { default = "192.168.0.0/16"}
variable "cidr_public1"    { default = "192.168.1.0/24" }
variable "cidr_public2"    { default = "192.168.2.0/24" }

variable "cidr_private1"   { default = "192.168.10.0/24" }
variable "cidr_private2"   { default = "192.168.20.0/24" }

variable "cidr_rds2a"   { default = "192.168.100.0/24" }
variable "cidr_rds2c"   { default = "192.168.200.0/24" }

# Bastion
variable "bastion_instance_type" { default = "t3.micro" }
variable "bastion_key_name"      { default = "bastion" }
variable "bastion_volume_size"   { default = 10 }

# Private EC2
variable "private_ec2_instance_type" { default = "t3.medium" }
variable "private_ec2_key_name"      { default = "bastion" }
variable "private_ec2_volume_size"   { default = 10 }

# RDS
variable "db_password" {}