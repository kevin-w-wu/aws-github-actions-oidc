terraform {
  #backend "s3" {
  #  bucket = "kevin-brange-sandbox"
  #  key    = "terraform/aws-github-actions-oidc.tfstate"
  #  region = "cn-northwest-1"
  #}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.2.0"
    }
  }
}

provider "aws" {
  region = "cn-northwest-1"
}
