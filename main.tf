provider "aws" {
  region     = "us-east-1"
  access_key = "Acess key"
    secret_key = "secret key"
}

resource "aws_s3_bucket" "user" {
  bucket = "sravani-us-east-1-tfstates"

 versioning{
    enabled = true
}

}

