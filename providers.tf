provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "naina1-s3bucket-date"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "naina1-date-dblocks"
    encrypt        = true
  }
}
