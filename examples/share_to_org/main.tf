module "share_to_org" {
  source        = "../../"
  name          = "share ssm"
  resource_arns = ["arn:aws:ssm:eu-central-1:123456789101:parameter/parametername", "arn:aws:ssm:eu-central-1:123456789101:parameter/anotherparameter"]
  principals    = ["arn:aws:organizations::101987654321:organization/o-abcdef1234"]
}
