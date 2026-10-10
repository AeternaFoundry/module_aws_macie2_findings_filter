variable "macie2_findings_filters" {
  description = <<EOT
Map of macie2_findings_filters, attributes below
Required:
    - action
    - finding_criteria (block):
        - criterion (optional, block):
            - eq (optional)
            - eq_exact_match (optional)
            - field (required)
            - gt (optional)
            - gte (optional)
            - lt (optional)
            - lte (optional)
            - neq (optional)
Optional:
    - description
    - name
    - name_prefix
    - position
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    action      = string
    description = optional(string)
    name        = optional(string)
    name_prefix = optional(string)
    position    = optional(number)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    finding_criteria = object({
      criterion = optional(list(object({
        eq             = optional(set(string))
        eq_exact_match = optional(set(string))
        field          = string
        gt             = optional(string)
        gte            = optional(string)
        lt             = optional(string)
        lte            = optional(string)
        neq            = optional(set(string))
      })))
    })
  }))
  # Note: 8 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

