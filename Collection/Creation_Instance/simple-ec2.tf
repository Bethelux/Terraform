# Create instances, and name them according to count
resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_image}"

    tags{
        #Name="instance${count.index}"
        	Name="${var.Name}${count.index}"
    }
    # Can use any aws instance type supported by ncloud
    instance_type = "${var.instance_type}"
    count="${var.instance_number}"
}

