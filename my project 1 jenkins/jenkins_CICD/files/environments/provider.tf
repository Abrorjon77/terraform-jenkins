provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Name = "ziyotek-devops-${var.environment}"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "jenkins-bucket-ziyotek-816725581106"
    key    = "docs/myfile"
    region = "us-east-1"
  }
}