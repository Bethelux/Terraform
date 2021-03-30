provider "aws" {
	access_key = "${var.access_key}"									# Access key from N'cloud
	secret_key = "${var.secret_key}"
	region = "${var.region}"

  endpoints {
    ec2 = "https://${var.ncloud_ip}/api/v2/aws/ec2"
    elb = "https://${var.ncloud_ip}/api/v2/aws/elb"
    rds = "https://${var.ncloud_ip}/api/v2/aws/rds"
  }

  insecure = "true"
  skip_metadata_api_check = true
  skip_credentials_validation = true
  skip_requesting_account_id = true
}

/*module "consul" {
  source = "hashicorp/consul/aws/"
  ami = "${var.ami}" 
}
*/

