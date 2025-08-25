provider "aws" {
  region = "us-east-1" # Change to your desired region
}

resource "aws_instance" "terraform_dylan" {
  ami           = "ami-00ca32bbc84273381"
  instance_type = "t2.small"
  key_name      = "terraform"

  tags = {
    Name = "terraform-dylan"
  }
}
