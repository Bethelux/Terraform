variable "admin_password" {
  description = "Windows Administrator password to login as."
}

variable "key_name" {
  description = "Name of the SSH keypair to use in AWS."
  #default = "myvpc"
}
/*

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-2"
}
*/
# Region Credentials
variable "ncloud_ip" {}
variable "secret_key" {}
variable "access_key" {}
variable "ami_image" {}
variable "NameInstance"	{
	default = "Instance"
}
variable "NameVolume"	{
	default = "Volume"
}
variable "size" {
	default = 8
}
variable "instance_number" {
  default = 1
}
variable "instance_type" {
  default = "t2.micro"
}
variable "availability_zone" {
	default = "symphony"
}

variable "image_id" {
	default = "amazon_windows_2012R2"
}
/*
variable "vpc_name" {
  #description = "ID of the VPC where to create security group"
}*/