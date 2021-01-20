provider "aws" {
  region = var.aws_reg
  profile = "terraform"
}

provider "template" {
    version = "~> 2.1.2"
}
