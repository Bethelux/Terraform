resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.example.id}"
  instance_id = "${aws_instance.ec2_instance.id}"
}

resource "aws_instance" "ec2_instance" {
  ami               = "${var.ami_image}"
  instance_type     = "${var.instance_type}"
  
  tags = {
    Name = "${var.NameInstance}"
  }
 
}

resource "aws_ebs_volume" "example" {
  availability_zone = "${var.availability_zone}"
  size              = "${var.size}"
  tags = {
    Name = "${var.NameVolume}"
  }
}
