resource "aws_instance" "MyWordPress" {
  ami                         = "ami-0440d3b780d96b29d"
  instance_type               = "t2.micro"
  key_name                    = "terraform-key"
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.mysubnet1.id
  vpc_security_group_ids      = [aws_security_group.wordpresssg.id]
  availability_zone           = "us-east-1a"
  tags = {
    Name = "WordPress-OS"
  }
}
