variable "eventgrid_namespaces" {
  description = <<EOT
Map of eventgrid_namespaces, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - capacity
    - public_network_access
    - sku
    - tags
    - identity (block)
    - inbound_ip_rule (block)
    - topic_spaces_configuration (block)
Nested eventgrid_namespace_topics (azurerm_eventgrid_namespace_topic):
    Required:
        - name
    Optional:
        - event_retention_in_days
EOT

  type = map(object({
    location              = string
    name                  = string
    resource_group_name   = string
    capacity              = optional(number) # Default: 1
    public_network_access = optional(string) # Default: "Enabled"
    sku                   = optional(string) # Default: "Standard"
    tags                  = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    inbound_ip_rule = optional(list(object({
      action  = optional(string) # Default: "Allow"
      ip_mask = string
    })))
    topic_spaces_configuration = optional(object({
      alternative_authentication_name_source = optional(list(string))
      dynamic_routing_enrichment = optional(object({
        key   = string
        value = string
      }))
      maximum_client_sessions_per_authentication_name = optional(number) # Default: 1
      maximum_session_expiry_in_hours                 = optional(number) # Default: 1
      route_topic_id                                  = optional(string)
      static_routing_enrichment = optional(object({
        key   = string
        value = string
      }))
    }))
    eventgrid_namespace_topics = optional(map(object({
      name                    = string
      event_retention_in_days = optional(number) # Default: 7
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.eventgrid_namespaces) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.eventgrid_namespaces : [for kk in keys(coalesce(v0.eventgrid_namespace_topics, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
