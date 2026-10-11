data "databricks_shares" "shares_lookup" {
  for_each = var.shares_lookup

  provider_config = each.value.provider_config
  shares          = each.value.shares
}

