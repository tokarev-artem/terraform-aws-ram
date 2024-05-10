module "share_to_principal" {
  source        = "../../"
  name          = "share ssm"
  resource_arns = ["arn:aws:ssm:eu-central-1:123456789101:parameter/parametername", "arn:aws:ssm:eu-central-1:123456789101:parameter/anotherparameter"]
  principals    = ["101987654321"]
  tags = {
    OwnedBy = "my_department"
  }
}

resource "aws_ram_resource_share_accepter" "receiver_accept" {
  provider  = aws.accepter
  share_arn = module.share_to_principal.resource_share_arn
}
