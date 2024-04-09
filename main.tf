provider "aws" {
  profile = "myaws"
  region  = var.region
}

variable "region" {
  description = "AWS region where resources will be deployed"
  type        = string
}
resource "aws_s3_bucket" "b" {
  bucket = "myawsbucket12345554555"
  acl    = "private"

  tags = {
    Name        = "My_new_bucket"
    Environment = "Dev"
  }
}

