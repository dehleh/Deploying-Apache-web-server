# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

#Provider profile and region in which all the resources will create
provider "aws" {
  profile = "default"
  region  = "eu-north-1"
}

#Resource to create s3 bucket
resource "aws_s3_bucket" "demo-bucket"{
  bucket = "ck-demo-bucket"

  tags = {
    Name = "S3Bucket"
  }
}