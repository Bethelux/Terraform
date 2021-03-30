 resource "aws_eip" "default" {
  instance = "${aws_instance.ec2_instance.id}"
  vpc      = true
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


