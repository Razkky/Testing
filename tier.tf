#createe version block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
#create a provider block 
provider "aws" {
  region = var.region
}
#create ec2 instance
resource "aws_instance" "tier3" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}
#create a vpc
resource "aws_vpc" "tier3_VPC" {
  cidr_block = var.cidr_block
  tags = {
    Name = "tier3_vpc"
  }
}
