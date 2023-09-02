# ec2_with_eip.tf

provider "aws" {
  region = "us-east-1" # Replace with your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-053b0d53c279acc90" # Replace with your desired AMI ID
  instance_type = "t2.micro"              # Replace with your desired instance type
  key_name      = "NV"         # Replace with your SSH key pair name

  tags = {
    Name = "MyAssignment2"
  }
}

resource "aws_network_interface" "example" {
  subnet_id = "subnet-07bc0e29d82ee0dbd" # Replace with the ID of the desired subnet
}

resource "aws_network_interface_attachment" "example" {
  instance_id          = aws_instance.example.id
  network_interface_id = aws_network_interface.example.id
  device_index         = 1  # Specify a valid device index
}

resource "aws_eip" "example" {
  instance = aws_instance.example.id
}

output "instance_ip" {
  value = aws_eip.example.public_ip
}

