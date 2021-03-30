provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"

  endpoints {
    ec2 = "https://${var.ncloud_ip}/api/v2/aws/ec2"
    elb = "https://${var.ncloud_ip}/api/v2/aws/elb"
    rds = "https://${var.ncloud_ip}/api/v2/aws/rds"
  }

  insecure = "true"
  skip_metadata_api_check = true
  skip_credentials_validation = true
  skip_requesting_account_id = true

  # Pinning AWS plugin version
  version = "0.12.2"

  # No importance for this value currently
  region = "${var.region}"
}

