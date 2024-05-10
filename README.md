
# Example usage:
```hcl
module "aws-ram" {
  source        = "../"
  version       = "~> 1.0"
  name          = "Share Subnets to develop account"
  resource_arns = ["arn:aws:ec2:eu-central-1:123456789101:subnet/subnet-1234567abcd", "arn:aws:ec2:eu-central-1:123456789101:subnet/subnet-abcdef1234"]
  principals    = ["arn:aws:organizations::101987654321:organization/o-abcdef1234", "55555555555"]
  tags = {
    OwnedBy = "network"
  }
}
```
For organization unit - need to use ARN, but not o-XXXXXXXXXX id, arn can be taken by simply running: `$ aws organizations describe-organization`

Documentation: https://docs.aws.amazon.com/cli/latest/reference/organizations/describe-organization.html

If you wish to share with the principal, accepting the sharing is mandatory. Please see examples.



## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.66 |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_principal_association_arns"></a> [principal\_association\_arns](#output\_principal\_association\_arns) | The ARNs of the principal associations |
| <a name="output_resource_association_arns"></a> [resource\_association\_arns](#output\_resource\_association\_arns) | The ARNs of the resource associations |
| <a name="output_resource_share_arn"></a> [resource\_share\_arn](#output\_resource\_share\_arn) | The ARN of the created resource share |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the resource share. | `string` | n/a | yes |
| <a name="input_principals"></a> [principals](#input\_principals) | The principal to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN | `list(string)` | n/a | yes |
| <a name="input_resource_arns"></a> [resource\_arns](#input\_resource\_arns) | The Amazon Resource Name (ARN) of the resource share. | `list(string)` | n/a | yes |
| <a name="input_allow_external_principals"></a> [allow\_external\_principals](#input\_allow\_external\_principals) | Indicates whether principals outside your organization can be associated with a resource share. | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags map for aws\_ram\_resource\_share resource | `map(string)` | `{}` | no | 