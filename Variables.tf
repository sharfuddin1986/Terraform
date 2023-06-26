variable "region" {
  description = "Specify the region for the resources."
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "Specify the instance image that you want to use for the instance."
  type        = map
  default     = {
     "us-east-1" = "ami-053b0d53c279acc90"
     "us-east-2" = "ami-053b0d53c279acc90"
     "us-west-1" = "ami-053b0d53c279acc90"
     "us-west-2" = "ami-053b0d53c279acc90"
  }
}

variable "instance_type" {
  description = "Specify the instance type to be used for the instance."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Specify the key pair to be used for the instance."
  type        = string
  default     = "linux-server-ubuntu"
