provider "aws" {
  profile = "myaws"
  region  = var.region
}
variable "region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "ap-east-1"  # Provide a default value if needed
}

resource "aws_s3_bucket" "b" {
  bucket = "myawsbucket1265555555555555"
 
  tags = {
    Name        = "My_new_bucket"
    Environment = "Dev"
  }
}

