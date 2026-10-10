variable "grafana_workspace_api_keys" {
  description = <<EOT
Map of grafana_workspace_api_keys, attributes below
Required:
    - key_name
    - key_role
    - seconds_to_live
    - workspace_id
Optional:
    - region
EOT

  type = map(object({
    key_name        = string
    key_role        = string
    seconds_to_live = number
    workspace_id    = string
    region          = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.grafana_workspace_api_keys : (
        length(v.key_name) >= 1 && length(v.key_name) <= 100
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.grafana_workspace_api_keys : (
        v.seconds_to_live >= 1 && v.seconds_to_live <= 2592000
      )
    ])
    error_message = "must be between 1 and 2592000"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

