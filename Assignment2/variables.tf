variable "aws_region" {
  description = "AWS region for the EC2 instance and Elastic IP"
  default     = "us-east-1"
}

variable "access_key" {
        description = "AKIAS2GMZDFEFDPF5EY6MJY5G"
}
variable "secret_key" {
        description = "2V+XN4Syn3odjt7vhJtDFDFDFDFDVphkHsjqPOlYA/kp34dnv"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-053b0d53c279acc90"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be launched"
  default     = "subnet-0b39a527e8661296f"
}


