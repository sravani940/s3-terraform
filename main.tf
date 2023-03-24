provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAY6E6BTLNTJXBG6PB"
    secret_key = "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"
}

resource "aws_s3_bucket" "user" {
  bucket = "sravani-us-east-1-tfstates"

 versioning{
    enabled = true
}

}

