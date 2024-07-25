resource "aws_instance" "firefly_1" {
  ami           = data.aws_ami.amzn_linux.id
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = [
    aws_security_group.ssh_access.id,
    aws_security_group.http_access.id,
  ]

  tags = {
    Name = "Firefly 1"
  }

  userData = filebase64("${path.module}/userdata.sh")
}

data "aws_ami" "amzn_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}