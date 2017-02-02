output "myserver-ip-address" {
    value = "${aws_instance.myserver.public_dns}"
}

output "myserver-id" {
    value = "${aws_instance.myserver.id}"
}
