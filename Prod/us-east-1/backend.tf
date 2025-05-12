terraform {
  backend "s3" {
    bucket         = "tf-backend-334152392165-us-east-1"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true
    encrypt        = true
    assume_role = {
      role_arn     = "arn:aws:iam::334152392165:role/TargetExecutionRole"
    }
  }
}

provider "aws" {
  region         = "us-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::334152392165:role/TargetExecutionRole"
    session_name = "GitHubTerraformSession-ue1"
  }
}
