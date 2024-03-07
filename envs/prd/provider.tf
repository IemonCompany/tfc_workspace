# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=1.5.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.39"
    }
  }

  cloud {
    organization = "work_metat"

    workspaces {
      name = "example_workspace"
    }
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  #profile = "terraform" #ローカルは見ずにTFC側で設定する。
  region = "ap-northeast-1"
}
