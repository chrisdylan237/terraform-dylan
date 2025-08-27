variable "aws_region" {
  description = "The AWS region to deploy in"
  type        = string
  default     = "us-east-1"
}

variable "instance_ami" {
  description = "The AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
}

variable "instance_name" {
  description = "The Name tag for the EC2 instance"
  type        = string
}
