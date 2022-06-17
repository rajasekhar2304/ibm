# Configure the AWS Provider

provider "aws" {
  region     = "us-west-2"
  access_key = var.my-access-key
  secret_key = var.my-secret-key
}

# VPC creation
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "IBM"
  }
}
