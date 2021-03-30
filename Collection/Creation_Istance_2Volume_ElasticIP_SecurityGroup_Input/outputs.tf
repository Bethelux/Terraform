output "Name Instance" {
  value = "${aws_instance.ec2_instance.tags.Name}"
}

output "user" {
  value = "${aws_instance.ec2_instance.tags.user}"
}


output "private_ip" {
  value = "${aws_instance.ec2_instance.private_ip}"
}

output "elastic_ip" {
  value = "${aws_eip.default.public_ip}"
}




output "image_id" {
  value = "${data.aws_ami.amazon_windows_2012R2.id}"
}

