# Create instances, and name them according to count
resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_image}"

    tags{
        Name="${var.NameInstance}${count.index}"
    }
    # Can use any aws instance type supported by ncloud
    instance_type = "${var.instance_type}"
    count="${var.instance_number}"
}

resource "aws_ebs_volume" "example" {
  availability_zone = "symphony"
  size              = "${var.size}"
  tags = {
    Name = "${var.NameVolume}"
  }
}


