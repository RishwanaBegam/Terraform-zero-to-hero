# This is root main.tf file
provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "this is ami id"
}

variable "instance_type" {
  description = "this is description of instance type"
 # type = map(string)
  
 /* default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
    "prod" = "t2.large"
  }*/
}

module "ec2-instances" {
  source = "./modules/ec2-instances"
  ami = var.ami
  instance_type = var.instance_type
  #instance_type = lookup(instance_type, terraform.workspace, t2.micro)
}
