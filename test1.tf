provider "aws" {
  region     = "us-east-1"
  access_key = "{aws_access_key}"
    secret_key = "{aws_secret_key}"
}
resource "aws_instance" "test" {
  ami           =  "{ami_id}"
  instance_type = "{instance_type}"

  
  }


resource "aws_s3_bucket" "user" {
  bucket = "mark-terraform"
  
  }
