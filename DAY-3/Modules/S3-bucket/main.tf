provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "rishwana-test-bucket" {
  bucket = "rishwana-s3-bucket"
}
