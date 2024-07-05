provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  instance_type = "t2.micro"
  ami = "ami-04a81a99f5ec58529"
  subnet_id = "subnet-081b539ec6b63385d"
}

resource "aws_s3_bucket" "rishwana-remote-backend-test" {
  bucket = "rishwana-backend-test"        # specify bucket name
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
