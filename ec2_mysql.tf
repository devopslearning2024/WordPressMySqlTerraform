resource "aws_instance" "Mysql" {
  ami                         = "ami-0440d3b780d96b29d"
  instance_type               = "t2.micro"
  key_name                    = "terraform-key"
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.mysubnet2.id
  vpc_security_group_ids      = [aws_security_group.mysqlsg.id]
  availability_zone           = "us-east-1b"
  tags = {
    Name = "MySQL-OS"
  }
}
