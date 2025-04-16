resource "aws_instance" "ec2_instance" { 
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id[0]
  vpc_security_group_ids = var.sg_id
  key_name      = var.key_name
  availability_zone = var.availability_zone[0]
  tags = {
    Name = var.instance_name
  }
}
