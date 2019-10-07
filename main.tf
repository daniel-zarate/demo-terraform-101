provider "aws" {
  version = "~> 2.30"
  region  = "us-east-1"
}

module "networking" {
  source = "./modules/networking/"
}

module "iam-resources" {
  source  = "./modules/terraform-aws-workshop-101-iam-resources/"
  pgp_key = var.PGP_KEY
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "zx-ventures"
    workspaces {
      name = "demo-terraform-101-dzarate"
    }
  }
}