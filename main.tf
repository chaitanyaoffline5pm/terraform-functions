terraform {
  backend "s3" {
    bucket         = "awsb6cgitedu"
    dynamodb_table = "terraform-state-lock-dynamo"
    key            = "awsb6statefunction.tfstate"

    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}