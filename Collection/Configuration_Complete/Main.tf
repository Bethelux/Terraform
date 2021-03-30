/*terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "TestNcloud"
    token = "PBflnZAGQ8qVww.atlasv1.i7mdlk5WUHzRRlcVqzokFnWUASGhQxgV3uYk2xFQke5pwMbPsLO0AT5ApgBHc5NYJHc"
    	workspaces {
      		name = "Test"
      	}
  }
}
*/


resource "aws_vpc" "main" {
  cidr_block = "10.1.0.0/16"
  enable_dns_hostnames = true
  tags { Name = "Main"}
  #default_security_group_id = "${aws_security_group.default.id}"
  
}


#Creazione Subnets
resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.1.0.0/24"
  tags = { Name = "Main" }
}



#Create Network
resource "aws_network_interface" "foo" {
  subnet_id   = "${aws_subnet.main.id}"
  #private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}


# Create instances, and name them according to count
resource "aws_instance" "instance" {
    ami = "${var.ami}"
    #subnet_id  = "${aws_subnet.main.id}"
    network_interface {
    network_interface_id = "${aws_network_interface.foo.id}"
    device_index         = 0
  }
    tags{
        Name="${var.NameInstance}${count.index}"
    }
 
  # Our Security group to allow WinRM access
  #security_groups = ["Main"]
 
  key_name = "${var.key_name}"
    
    # Can use any aws instance type supported by ncloud
    instance_type = "${var.instance_type}"
    count="${var.instance_number}"
}


# Creazione ElasticIP
  resource "aws_eip" "default" {
  instance = "${aws_instance.instance.id}"
  #associate_with_private_ip = "10.0.0.12"
  depends_on                = ["aws_internet_gateway.gw"]
  vpc      = true
}


#Creazione Gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.main.id}"
  tags { Name = "Main"}
}



/*resource "aws_egress_only_internet_gateway" "egress" {
  vpc_id = "${aws_vpc.main.id}"
}

resource "aws_route" "r" {
  route_table_id              = "rtb-4fbb3ac4"
  destination_ipv6_cidr_block = "::/0"
  egress_only_gateway_id      = "${aws_egress_only_internet_gateway.egress.id}"
}
*/
/*resource "aws_vpc_ipv4_cidr_block_association" "secondary_cidr" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "172.2.0.0/16"
}

resource "aws_subnet" "in_secondary_cidr" {
  vpc_id     = "${aws_vpc_ipv4_cidr_block_association.secondary_cidr.vpc_id}"
  cidr_block = "172.2.0.0/24"

}*/


#Creazione Security Group
resource "aws_security_group" "default" {
  name        = "Main"
  description = "Used in the terraform"
  vpc_id = "${aws_vpc.main.id}"
  # WinRM access from anywhere
  ingress {
    from_port   = 5985
    to_port     = 5986
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

/*
resource "aws_vpc_ipv4_cidr_block_association" "secondary_cidr" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.0.0/0"
}

resource "aws_subnet" "in_secondary_cidr" {
  vpc_id     = "${aws_vpc_ipv4_cidr_block_association.secondary_cidr.vpc_id}"
  cidr_block = "8.0.0.0/0"
}
*/



/*
resource "aws_subnet" "tf_test_subnet" {
  vpc_id                  = "${aws_vpc.example.id}"
  cidr_block              = "10.0.0.0/16"
  map_public_ip_on_launch = true
  tags { Name = "Test"}
  depends_on = ["aws_internet_gateway.gw"]
}

#Creazione Gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.example.id}"
  tags { Name = "Test"}
}

*/

#Route_Table
resource "aws_route_table" "r" {
  vpc_id = "${aws_vpc.main.id}"
    
    route {
  instance_id = "${aws_instance.instance.id}"
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
  route {
    cidr_block = "170.0.5.0/16"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
   

     #route {
   # ipv6_cidr_block        = "::/0"
    #egress_only_gateway_id = "${aws_egress_only_internet_gateway.foo.id}"
  #}
}




/*
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.example.id}"
  instance_id = "${aws_instance.ec2_instance.id}"
}


# Create instances, and name them according to count
resource "aws_instance" "ec2_instance" {
    ami = "${var.ami}"

    tags{
        Name="${var.NameInstance}${count.index}"
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

*/

/*
resource "aws_subnet" "tf_test_subnet" {
  vpc_id                  = "${aws_vpc.example.id}"
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = true

  depends_on = ["aws_internet_gateway.gw"]
}



resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.example.id}"
}

 resource "aws_eip" "default" {
  instance = "${aws_instance.instance.id}"
  associate_with_private_ip = "10.0.0.12"
  depends_on                = ["aws_internet_gateway.gw"]
  vpc      = true
  
}
resource "aws_vpc" "example" {
  cidr_block = "10.1.0.0/16"
  enable_dns_hostnames = true
}

resource "aws_subnet" "example" {
  vpc_id = "${aws_vpc.example.id}"
  availability_zone = "symphony"
  cidr_block        = "${cidrsubnet(aws_vpc.example.cidr_block, 4, 1)}"
}

resource "aws_instance" "instance" {
	ami = "${var.ami}"
	instance_type = "${var.instance_type}"
	#security_groups = ["default"]
	private_ip = "10.0.0.12"
 	subnet_id  = "${aws_subnet.tf_test_subnet.id}"
	tags { 
	Name = "${var.NameInstance}" 
	size = "${var.size}"  
	}
	connection {
    type     = "instance"
    user     = "Administrator"
    password = "${var.admin_password}"

    # set from default of 5m to 10m to avoid winrm timeout
    timeout = "10m"
  	}

	provisioner "local-exec" {
		command = "echo ${aws_instance.instance.public_ip} > ip_address.txt"
	}
}
*/


resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.main.id}"
  route_table_id = "${aws_route_table.r.id}"
}