us-east-1 region main.tf file

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


US-east-2 region main.tf file

provider "aws" {
    alias = "NV"
    access_key = "AKIAS2GMZPF5COAOPF6L"
    secret_key = "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"
    region = "us-east-2"
}

resource "aws_instance" "assignment-3-2" {
    provider = aws.NV
    ami = "ami-024e6efaf93d85776"
    count = "2"
    instance_type = "t2.micro"
    key_name = "ohio"
    tags = {
    Name = "hello-ohio"
        }
}


