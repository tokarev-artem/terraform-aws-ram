module "share_to_org" {
  source        = "../../"
  name          = "share ssm parameter within org"
  resource_arns = ["arn:aws:ssm:eu-central-1:631693372541:parameter/something_important"]
  principals    = ["arn:aws:organizations::101987654321:organization/o-abcdef1234"]
}
