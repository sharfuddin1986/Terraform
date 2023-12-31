variable "access_key" {
        description = "Your_Acess_key"
}
variable "secret_key" {
        description = "Your_secret_key"
}


variable "instance_name" {
        description = "Name of the instance to be created"
        default = "Assignment1"
}

variable "instance_type" {
        default = "t2.micro"
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-017840f6a2c8fea36"
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-024e6efaf93d85776"
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}


