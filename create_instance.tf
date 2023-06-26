provider "aws" {
region = "us-east-1" 
access_key = "AKIAS2GMZPF5OVO6BS4Q"
secret_key = "UIU50NBocVolvGFEBmMi1dfksSJ9WZ3qacqp95MJ" 
}

resource "aws_instance" "example" {
  
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

}
