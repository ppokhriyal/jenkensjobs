
#configure provider version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

#configure provider
 provider "aws" {
   region     = "us-east-1"
 }

#Create Custom VPC
resource "aws_vpc" "demoVPC" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "demovpc"
  }
}

