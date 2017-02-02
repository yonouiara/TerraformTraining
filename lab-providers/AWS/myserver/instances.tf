# Create a simple server
resource "aws_instance" "myserver" {
  ami           = "ami-af0fc0c0"
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.cloud-corner-key.key_name}"
}

resource "aws_security_group_rule" "allow_ssh" {
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "sg-91886dfa"
}

resource "aws_key_pair" "cloud-corner-key" {
  key_name = "cloud-corner"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDnQEuReqTrp16WaHsmca3ejkPLUp8XUF2w3/qn8D8DIg3xbDOiQwC1nDWYg4zqWgiL696gunuzsZpSCfTghkN2wvkfxcS0PZrnbovFPVh4CJCrmh4RxeajzSUDfuAhuMI7H+id8X+E5iEjN1BTurCgfUNVxPrP7axdfSB/wvkdS/cn0cY4i58MLwA0DuLSb7Hb/uy4WyyIA/fX5WSn+eOQaZJar6zUvQ1oVa66wObW0zC17lqVOd2KibM8He57zFVOPvbqFXkZij9z9fkx3tkaFrKk09KuaQnWt1o1XtotPvLp17O4rppofKXXRFNUuMBpHQ4TS5Bx+rJmTmXzeizTBiDKujCS40lPTSet9jt0gat1a5bl7sjtvdeqQlzjSA2ZtVh7LyjNQjvdAJPKjd7btTXgGkFpUMt28WT0uPIU4xoBTdYORT8Dl9+agmN8+0UJhMIe96UL5b6w5OGmfRd/17UzSuyaR3I2/4QmmLn/pUWPpG59xBOmGdYuZCjJb2My46qhYmJvWWeYKkvvzuTNy9TbEbBebFIBzbl4wGkI7GbaHqPN/8bDjxXoaOffTlf9Jv7trj/MQQta06k/vNLQhU7Af6YQmi3BuFONHo0BeOFPOvEMgcFxxWwpxfMqqFeJSSX/khqmolxoEZsfyuUvFqK8E5u0LMp8RAAHAcLUSw== ynouiara@cisco.com"
}
