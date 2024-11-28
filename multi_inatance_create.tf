#  How to create 10 EC2 machines with incremental values like 0,1,2, etc.



provider "aws" {
  region = "us-east-1"  # Replace with your region
}

resource "aws_instance" "example" {
  count         = 10
  ami           = "ami-12345678" # Replace with your AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "Instance-${count.index}"
  }
}
