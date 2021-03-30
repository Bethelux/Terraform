
 resource "aws_eip" "default" {
  instance = "${aws_instance.winrm.id}"
  vpc      = true
}
resource "aws_vpc" "example" {
  cidr_block = "10.1.0.0/16"
}


resource "aws_subnet" "example" {
  vpc_id = "${aws_vpc.example.id}"
  availability_zone = "symphony"
  cidr_block        = "${cidrsubnet(aws_vpc.example.cidr_block, 4, 1)}"
}
# Default security group to access the instances via WinRM over HTTP and HTTPS
resource "aws_security_group" "default" {
  name        = "default"
  description = "Used in the terraform"
  vpc_id = "${aws_vpc.example.id}"
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

# Lookup the correct AMI based on the region specified
data "aws_ami" "amazon_windows_2012R2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["*Win_Server_STDData_2012_Ger*"]
  }
}

resource "aws_instance" "winrm" {
  # The connection block tells our provisioner how to
  # communicate with the resource (instance)
  connection {
    type     = "winrm"
    user     = "Administrator"
    password = "${var.admin_password}"

    # set from default of 5m to 10m to avoid winrm timeout
    timeout = "10m"
  }

  instance_type = "t2.micro"
  ami           = "${data.aws_ami.amazon_windows_2012R2.image_id}"

  # The name of our SSH keypair you've created and downloaded
  # from the AWS console.
  #
  # https://console.aws.amazon.com/ec2/v2/home?region=us-west-2#KeyPairs
  #
  key_name = "${var.key_name}"

  # Our Security group to allow WinRM access
  security_groups = ["${aws_security_group.default.name}"]

  # Note that terraform uses Go WinRM which doesn't support https at this time. If server is not on a private network,
  # recommend bootstraping Chef via user_data.  See asg_user_data.tpl for an example on how to do that.
  user_data = <<EOF
<script>
  winrm quickconfig -q & winrm set winrm/config @{MaxTimeoutms="1800000"} & winrm set winrm/config/service @{AllowUnencrypted="true"} & winrm set winrm/config/service/auth @{Basic="true"}
</script>
<powershell>
  netsh advfirewall firewall add rule name="WinRM in" protocol=TCP dir=in profile=any localport=5985 remoteip=any localip=any action=allow
  # Set Administrator password
  $admin = [adsi]("WinNT://./administrator, user")
  $admin.psbase.invoke("SetPassword", "${var.admin_password}")
</powershell>
EOF
}