resource "aws_instance" "public-inst" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_pair_name
  subnet_id                   = aws_subnet.main.id
  associate_public_ip_address = true
  security_groups             = [aws_security_group.allow_tls.id]
  user_data                   = <<EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Hello world from $(hostname -f)<h1>" > /var/www/html/index.html

  EOF
  tags = {
    name = "public-insta1"
  }
}