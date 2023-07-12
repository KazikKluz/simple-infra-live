terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5"
        
    }
  }

  backend "s3" {
    
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "network" {

  source = "github.com/KazikKluz/network_module?ref=v0.0.1"
  
}