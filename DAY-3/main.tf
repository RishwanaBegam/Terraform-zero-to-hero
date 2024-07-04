provider "aws" {
    region = "us-east-1"
}

module "EC2-instance" { 
  source = "./Modules/EC2-Instances"             #specify path for the modules
  ami_value = "ami-04a81a99f5ec58529"            #specify desired ami id
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-081b539ec6b63385d"   #specify desired subnet id
  name_value = "rishwanatest"
}

output "instance-type" {
  value = module.EC2-instance.instance-type 
}

output "instance-name" {
  value = module.EC2-instance.instance-name
}

output "instance-state" {
  value = module.EC2-instance.instance-state
}

output "public-ip" {
  value = module.EC2-instance.public-ip
}

output "subnet-id" {
  value = module.EC2-instance.subnet-id
}
