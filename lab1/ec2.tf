resource "aws_instance" "ec2" {
  ami                         = "ami-06878d265978313ca"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public-subnet.id
  security_groups             = [aws_security_group.sg.id]
  associate_public_ip_address = true



  user_data = <<-EOF
  #!/bin/bash
  echo "*** Installing apache2"
  sudo apt update -y
  sudo apt install apache2 -y
  echo "*** Completed Installing apache2"
  EOF

  tags = {
    Name = "lab1_instance"
  }

}

