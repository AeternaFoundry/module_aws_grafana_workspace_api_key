output "grafana_workspace_api_keys_id" {
  description = "Map of id values across all grafana_workspace_api_keys, keyed the same as var.grafana_workspace_api_keys"
  value       = { for k, v in aws_grafana_workspace_api_key.grafana_workspace_api_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "grafana_workspace_api_keys_key" {
  description = "Map of key values across all grafana_workspace_api_keys, keyed the same as var.grafana_workspace_api_keys"
  value       = { for k, v in aws_grafana_workspace_api_key.grafana_workspace_api_keys : k => v.key if v.key != null && length(v.key) > 0 }
  sensitive   = true
}
output "grafana_workspace_api_keys_key_name" {
  description = "Map of key_name values across all grafana_workspace_api_keys, keyed the same as var.grafana_workspace_api_keys"
  value       = { for k, v in aws_grafana_workspace_api_key.grafana_workspace_api_keys : k => v.key_name if v.key_name != null && length(v.key_name) > 0 }
}
output "grafana_workspace_api_keys_key_role" {
  description = "Map of key_role values across all grafana_workspace_api_keys, keyed the same as var.grafana_workspace_api_keys"
  value       = { for k, v in aws_grafana_workspace_api_key.grafana_workspace_api_keys : k => v.key_role if v.key_role != null && length(v.key_role) > 0 }
}
output "grafana_workspace_api_keys_region" {
  description = "Map of region values across all grafana_workspace_api_keys, keyed the same as var.grafana_workspace_api_keys"
  value       = { for k, v in aws_grafana_workspace_api_key.grafana_workspace_api_keys : k => v.region if v.region != null && length(v.region) > 0 }
}
output "grafana_workspace_api_keys_seconds_to_live" {
  description = "Map of seconds_to_live values across all grafana_workspace_api_keys, keyed the same as var.grafana_workspace_api_keys"
  value       = { for k, v in aws_grafana_workspace_api_key.grafana_workspace_api_keys : k => v.seconds_to_live if v.seconds_to_live != null }
}
output "grafana_workspace_api_keys_workspace_id" {
  description = "Map of workspace_id values across all grafana_workspace_api_keys, keyed the same as var.grafana_workspace_api_keys"
  value       = { for k, v in aws_grafana_workspace_api_key.grafana_workspace_api_keys : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

