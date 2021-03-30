# Region Credentials
variable "ncloud_ip" {}
variable "secret_key" {}
variable "access_key" {}
variable "ami_image" {}
variable "key_name" {}
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

