# Region Credentials
variable "ncloud_ip" {}
variable "secret_key" {}
variable "access_key" {}
variable "ami_image" {}
variable "Name"	{
	default = "Instance"
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

