# How to terminate 9 EC2 instances and leave one EC2 machine running.

resource "aws_instance" "example" {
  count         = 1  # Change from 10 to 1
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  tags = {
    Name = "Instance-0"
  }
}
