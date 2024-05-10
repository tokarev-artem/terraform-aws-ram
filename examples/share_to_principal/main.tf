module "share_to_principal" {
  source        = "../../"
  name          = "share subnets to dev account"
  resource_arns = ["arn:aws:ec2:eu-central-1:123456789101:subnet/subnet-11111111111", "arn:aws:ec2:eu-central-1:123456789101:subnet/subnet-22222222222"]
  principals    = ["101987654321"]
  tags = {
    OwnedBy = "my_department"
  }
}

resource "aws_ram_resource_share_accepter" "receiver_accept" {
  provider  = aws.accepter
  share_arn = module.share_to_principal.resource_share_arn
}
