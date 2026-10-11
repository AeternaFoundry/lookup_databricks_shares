output "shares_lookup_provider_config" {
  description = "Map of provider_config values across all shares_lookup, keyed the same as var.shares_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_shares.shares_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "shares_lookup_shares" {
  description = "Map of shares values across all shares_lookup, keyed the same as var.shares_lookup except keys with no shares are omitted"
  value       = { for k, v in data.databricks_shares.shares_lookup : k => v.shares if v.shares != null && length(v.shares) > 0 }
}

