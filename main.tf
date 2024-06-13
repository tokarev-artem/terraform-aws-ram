resource "aws_ram_resource_share" "this" {
  name                      = var.name
  allow_external_principals = var.allow_external_principals
  permission_arns           = try(var.permission_arns, [])
  tags                      = can(var.tags) ? merge({ "Name" = var.name }, var.tags) : { "Name" = var.name }
}

resource "aws_ram_resource_association" "this" {
  for_each = { for idx, arn in var.resource_arns : idx => arn }

  resource_arn       = each.value
  resource_share_arn = aws_ram_resource_share.this.arn
}

resource "aws_ram_principal_association" "this" {
  for_each = { for idx, principal in var.principals : idx => principal }

  principal          = each.value
  resource_share_arn = aws_ram_resource_share.this.arn
}