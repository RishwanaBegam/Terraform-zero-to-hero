provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    instance_type = var.instance_type_value
    ami = var.ami_value
    subnet_id = var.subnet_id_value
    tags = {
    name = var.name_value
  }
}
