variable "name" {
  type        = string
  description = "The name of the resource share."
}
variable "allow_external_principals" {
  type        = bool
  default     = true
  description = "Indicates whether principals outside your organization can be associated with a resource share."
}
variable "principals" {
  type        = list(string)
  description = "The principal to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN"
}
variable "resource_arns" {
  type        = list(string)
  description = "The Amazon Resource Name (ARN) of the resource share."
}
variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags map for aws_ram_resource_share resource"
}
variable "permission_arns" {
  type        = list(string)
  default     = []
  description = "Specifies the Amazon Resource Names (ARNs) of the RAM permission to associate with the resource share. If you do not specify an ARN for the permission, RAM automatically attaches the default version of the permission for each resource type. You can associate only one permission with each resource type included in the resource share."
}
