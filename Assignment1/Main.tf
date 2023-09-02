provider "aws" {
    access_key = "AKIAS2GMZPF5EY6MJY5G"
    secret_key = "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"
    region = "us-east-2"
}

resource "aws_instance" "ec2_instance" {
    ami = "ami-024e6efaf93d85776"
    count = "1"
    subnet_id = "subnet-017840f6a2c8fea36"
    instance_type = "t2.micro"
    key_name = "ohio-key"
} 

