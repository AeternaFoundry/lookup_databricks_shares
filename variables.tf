variable "shares_lookup" {
  description = <<EOT
Map of shares_lookup, attributes below
Optional:
    - provider_config
    - shares
EOT

  type = map(object({
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    shares = optional(list(string))
  }))
}

