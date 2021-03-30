 resource "aws_eip" "default" {
  instance = "${aws_instance.ec2_instance.id}"
  vpc      = true
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.example.id}"
  instance_id = "${aws_instance.ec2_instance.id}"
}


# Create instances, and name them according to count
resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_image}"

    tags{
        NameInstance="${var.NameInstance}${count.index}"
    }
    # Can use any aws instance type supported by ncloud
    instance_type = "${var.instance_type}"
    count="${var.instance_number}"
}

resource "aws_ebs_volume" "example" {
  availability_zone = "${var.availability_zone}"
  size              = "${var.size}"
  tags = {
    NameVolume = "${var.NameVolume}"
  }
}


