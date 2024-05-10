
provider "aws" {
  region = "eu-central-1"
}

provider "aws" {
  alias  = "accepter"
  region = "eu-central-1"
  assume_role {
    role_arn = "arn:aws:iam::101987654321:role/cross-account-role"
  }
}
