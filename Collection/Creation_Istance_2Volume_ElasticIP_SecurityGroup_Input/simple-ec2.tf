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
connection {
    type     = "ec2_instance"
    password = "${var.user_password}"

    # set from default of 5m to 10m to avoid ec2_instance timeout
    timeout = "10m"
    }
    ami = "${var.ami_image}"

    tags{
        Name="${var.NameInstance}${count.index}"
        user   = "${var.user}"
    }
 
  # Our Security group to allow WinRM access
  security_groups = ["default"]
 
  key_name = "${var.key_name}"
    
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

