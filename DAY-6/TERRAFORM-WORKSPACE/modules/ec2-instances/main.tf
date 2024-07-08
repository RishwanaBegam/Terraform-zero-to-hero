provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "this is ami id"
}

variable "instance_type" {
  description = "this is description of instance type"
}

resource "aws_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type
  
}