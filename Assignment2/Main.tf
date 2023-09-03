# ec2_with_eip.tf
  GNU nano 6.2                                                     main.tf
provider "aws" {
    access_key = "AKIAS2GMZPF5EY6MJY5G"
    secret_key = "2V+XN4Syn3odjt7vhJtVphkHsjqPOlYA/kp34dnv"
    region = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-053b0d53c279acc90"  # Use the AMI ID for your desired OS and region
  instance_type = "t2.micro"               # Change this to your desired instance type
}

resource "aws_eip" "example" {
  instance = aws_instance.example.id
}
