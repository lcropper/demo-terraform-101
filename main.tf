terraform {
  # MODIFY this line to look for 2.27.0 or greater
  version = ">= 2.27.0"
}

provider "aws" {
}

module "server" {
  source = "./server"

  num_webs     = var.num_webs
  identity     = var.identity
  ami          = var.ami
  ingress_cidr = var.ingress_cidr
  public_key   = var.public_key
  private_key  = var.private_key
}

