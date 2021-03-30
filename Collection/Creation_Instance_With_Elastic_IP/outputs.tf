/*output "private_ip" {
  value = "${aws_instance.winrm.private_ip}"
}
*/
output "elastic ip" {
  value = "${aws_eip.default.public_ip}"
}


output "Name Instance" {
  value = "${aws_instance.ec2_instance.tags.NameInstance}"
}





