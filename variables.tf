variable "name" {
  type        = string
  description = "The name of the resource share."
}
variable "allow_external_principals" {
  type        = bool
  description = "Indicates whether principals outside your organization can be associated with a resource share."
  default     = true
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
  description = "Tags map for aws_ram_resource_share resource"
  default     = {}
}