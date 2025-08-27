provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "terraform_dylan" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = var.instance_name
  }
}

# Random ID for uniqueness

resource "random_id" "randomness" {
  byte_length = 16
}

locals {
  bucket_name = "dylan"
  environment = "dev"
  project     = "s3bucket"
}

resource "aws_s3_bucket" "terraform_dylan_bucket" {
  bucket = "${local.bucket_name}-${random_id.randomness.hex}"

  tags = {
    Name        = "${local.project}-bucket"
    Environment = local.environment
  }
}
