terraform {
  required_version = ">= 0.12.1"
}

provider "stripe" {
  version   = "~> 1.3"
  api_token = var.api_token
}
