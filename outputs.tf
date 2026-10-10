output "macie2_findings_filters_id" {
  description = "Map of id values across all macie2_findings_filters, keyed the same as var.macie2_findings_filters"
  value       = { for k, v in aws_macie2_findings_filter.macie2_findings_filters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "macie2_findings_filters_action" {
  description = "Map of action values across all macie2_findings_filters, keyed the same as var.macie2_findings_filters"
  value       = { for k, v in aws_macie2_findings_filter.macie2_findings_filters : k => v.action if v.action != null && length(v.action) > 0 }
}
output "macie2_findings_filters_arn" {
  description = "Map of arn values across all macie2_findings_filters, keyed the same as var.macie2_findings_filters"
  value       = { for k, v in aws_macie2_findings_filter.macie2_findings_filters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "macie2_findings_filters_description" {
  description = "Map of description values across all macie2_findings_filters, keyed the same as var.macie2_findings_filters"
  value       = { for k, v in aws_macie2_findings_filter.macie2_findings_filters : k => v.description if v.description != null && length(v.description) > 0 }
}
output "macie2_findings_filters_finding_criteria" {
  description = "Map of finding_criteria values across all macie2_findings_filters, keyed the same as var.macie2_findings_filters"
  value       = { for k, v in aws_macie2_findings_filter.macie2_findings_filters : k => one(v.finding_criteria) if v.finding_criteria != null && length(v.finding_criteria) > 0 }
}
output "macie2_findings_filters_name" {
  description = "Map of name values across all macie2_findings_filters, keyed the same as var.macie2_findings_filters"
  value       = { for k, v in aws_macie2_findings_filter.macie2_findings_filters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "macie2_findings_filters_name_prefix" {
  description = "Map of name_prefix values across all macie2_findings_filters, keyed the same as var.macie2_findings_filters"
  value       = { for k, v in aws_macie2_findings_filter.macie2_findings_filters : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "macie2_findings_filters_position" {
  description = "Map of position values across all macie2_findings_filters, keyed the same as var.macie2_findings_filters"
  value       = { for k, v in aws_macie2_findings_filter.macie2_findings_filters : k => v.position if v.position != null }
}
output "macie2_findings_filters_region" {
  description = "Map of region values across all macie2_findings_filters, keyed the same as var.macie2_findings_filters"
  value       = { for k, v in aws_macie2_findings_filter.macie2_findings_filters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "macie2_findings_filters_tags" {
  description = "Map of tags values across all macie2_findings_filters, keyed the same as var.macie2_findings_filters"
  value       = { for k, v in aws_macie2_findings_filter.macie2_findings_filters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "macie2_findings_filters_tags_all" {
  description = "Map of tags_all values across all macie2_findings_filters, keyed the same as var.macie2_findings_filters"
  value       = { for k, v in aws_macie2_findings_filter.macie2_findings_filters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

