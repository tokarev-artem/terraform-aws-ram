output "resource_share_arn" {
  description = "The ARN of the created resource share"
  value       = aws_ram_resource_share.this.arn
}

output "resource_association_arns" {
  description = "The ARNs of the resource associations"
  value       = { for idx, assoc in aws_ram_resource_association.this : idx => assoc.id }
}

output "principal_association_arns" {
  description = "The ARNs of the principal associations"
  value       = { for idx, assoc in aws_ram_principal_association.this : idx => assoc.id }
}