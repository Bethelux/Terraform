resource "aws_ebs_volume" "example" {
  availability_zone = "symphony"
  size = "${var.size}"

  tags = {
    Name = "${var.Name}"
  }
}
