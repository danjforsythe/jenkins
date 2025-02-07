provider "aws" {
  region = "us-west-2"
}
terraform {
  backend "s3" {
    bucket         = "jenkins-state-dan-forsythe"   
    key            = "terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
  }
}
resource "aws_s3_bucket" "example" {
bucket = "dan-forsythe64"
acl    = "private"
}
