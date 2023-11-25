terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key =  var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "web_test" {
  ami           = var.ami
  instance_type = var.instance_aws
  key_name = var.private_key_ssh
  tags = {
    Name = var.private_key_ssh
  }
}
