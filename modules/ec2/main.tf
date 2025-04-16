resource "aws_instance" "ec2_instance" { 
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id[0]
  vpc_security_group_ids = var.sg_id
  key_name      = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Hello from Modular Terraform</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = var.instance_name
  }
}
