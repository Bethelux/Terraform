/*terraform{
  backend "consul" {
  workspace = "app.terraform.io/app/Ncloud"
  	organization = "Ncloud"
    address = "app.terraform.io/app"
    scheme  = "https://"
    path    = "C://terraform/Training/backend"
  }
}*/

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "TestNcloud"
    token = "5j0MzBdfVwjU5g.atlasv1.sFrlDbbeCqzq1toihdO45vA6z09pl8YOMznXoiAMOcfMSEW17YSIzy9LEz9P01EzxME"
    	workspaces {
      		name = "Test"
      	}
  }
}
/*


backend "remote" {
	organization = "Ncloud"

	workspace {
		name ="Dev"
	}
}




resource "aws_instance" "instance" {
	ami = "${var.ami}"
	instance_type = "${var.instance_type}"

	provisioner "local-exec" {
		command = "echo ${aws_instance.instance.public_ip} > ip_address.txt"
	}
}

resource "aws_eip" "ip" {
	instance = "${aws_instance.instance.id}"
	vpc = true
}*/
