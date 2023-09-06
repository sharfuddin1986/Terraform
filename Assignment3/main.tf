provider "aws" {
    alias = "NV"
    access_key = "Acess_key"
    secret_key = "Secret_key"
    region = "us-east-1"
}

resource "aws_instance" "assignment-3-1" {
    provider = aws.NV
    ami = "ami-053b0d53c279acc90"
    count = "2"
    instance_type = "t2.micro"
    key_name = "NV"
    tags = {
    Name = "hello-virginia"
        }
}

