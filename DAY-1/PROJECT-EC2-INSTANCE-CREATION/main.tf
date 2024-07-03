provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "example" {
    ami           = "ami-06c68f701d8090592"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
}
