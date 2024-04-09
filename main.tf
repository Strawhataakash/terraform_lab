provider "aws" {
  profile = "myaws"
  region  = var.region
}
resource "aws_s3_bucket" "b" {
  bucket = "myawsbucket1265555555555555"
 
  tags = {
    Name        = "My_new_bucket"
    Environment = "Dev"
  }
}

