# ec2_with_eip.tf
                                                    
provider "aws" {
    access_key = "Your_acess_key"
    secret_key = "Your_secret_key"
    region = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-053b0d53c279acc90"  # Use the AMI ID for your desired OS and region
  instance_type = "t2.micro"               # Change this to your desired instance type
}

resource "aws_eip" "example" {
  instance = aws_instance.example.id
}
