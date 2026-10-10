resource "aws_macie2_findings_filter" "macie2_findings_filters" {
  for_each = var.macie2_findings_filters

  action      = each.value.action
  description = each.value.description
  name        = each.value.name
  name_prefix = each.value.name_prefix
  position    = each.value.position
  region      = each.value.region
  tags        = each.value.tags
  tags_all    = each.value.tags_all

  finding_criteria {
    dynamic "criterion" {
      for_each = each.value.finding_criteria.criterion != null ? each.value.finding_criteria.criterion : []
      content {
        eq             = criterion.value.eq
        eq_exact_match = criterion.value.eq_exact_match
        field          = criterion.value.field
        gt             = criterion.value.gt
        gte            = criterion.value.gte
        lt             = criterion.value.lt
        lte            = criterion.value.lte
        neq            = criterion.value.neq
      }
    }
  }
}

